
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variable {int arrsize; int ind_arrsize; int varcharsize; char* value; int const type; int offset; scalar_t__ ind_varcharsize; char* ind_value; int ind_offset; int ind_type; int * ind_pointer; scalar_t__ pointer; } ;
struct statement {int force_indicator; int compat; int lineno; } ;
typedef enum ARRAY_TYPE { ____Placeholder_ARRAY_TYPE } ARRAY_TYPE ;
typedef int PGresult ;


 int ECPG_ARRAY_ERROR ;
 int ECPG_ARRAY_NONE ;
 int ECPG_INFORMIX_SUBSELECT_NOT_ONE ;
 int ECPG_NO_ARRAY ;
 int ECPG_OUT_OF_MEMORY ;
 int ECPG_SQLSTATE_CARDINALITY_VIOLATION ;
 int ECPG_SQLSTATE_DATATYPE_MISMATCH ;
 int ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY ;
 int ECPG_TOO_MANY_MATCHES ;




 scalar_t__ INFORMIX_MODE (int ) ;
 int PQfformat (int const*,int) ;
 int PQftype (int const*,int) ;
 scalar_t__ PQgetlength (int const*,int,int) ;
 int PQgetvalue (int const*,int,int) ;
 int PQntuples (int const*) ;
 scalar_t__ ecpg_auto_alloc (int,int ) ;
 int ecpg_get_data (int const*,int,int,int ,int const,int ,char*,char*,int,int,int,int,int ,int ) ;
 int ecpg_is_type_an_array (int ,struct statement const*,struct variable*) ;
 int ecpg_log (char*,int ,int,...) ;
 int ecpg_raise (int ,int ,int ,int *) ;
 int strlen (int ) ;

bool
ecpg_store_result(const PGresult *results, int act_field,
      const struct statement *stmt, struct variable *var)
{
 enum ARRAY_TYPE isarray;
 int act_tuple,
    ntuples = PQntuples(results);
 bool status = 1;

 if ((isarray = ecpg_is_type_an_array(PQftype(results, act_field), stmt, var)) == ECPG_ARRAY_ERROR)
 {
  ecpg_raise(stmt->lineno, ECPG_OUT_OF_MEMORY, ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, ((void*)0));
  return 0;
 }

 if (isarray == ECPG_ARRAY_NONE)
 {



  if ((var->arrsize > 0 && ntuples > var->arrsize) || (var->ind_arrsize > 0 && ntuples > var->ind_arrsize))
  {
   ecpg_log("ecpg_store_result on line %d: incorrect number of matches; %d don't fit into array of %ld\n",
      stmt->lineno, ntuples, var->arrsize);
   ecpg_raise(stmt->lineno, INFORMIX_MODE(stmt->compat) ? ECPG_INFORMIX_SUBSELECT_NOT_ONE : ECPG_TOO_MANY_MATCHES, ECPG_SQLSTATE_CARDINALITY_VIOLATION, ((void*)0));
   return 0;
  }
 }
 else
 {



  if (var->arrsize == 0)
  {
   ecpg_raise(stmt->lineno, ECPG_NO_ARRAY, ECPG_SQLSTATE_DATATYPE_MISMATCH, ((void*)0));
   return 0;
  }
 }




 if ((var->arrsize == 0 || var->varcharsize == 0) && var->value == ((void*)0))
 {
  int len = 0;

  if (!PQfformat(results, act_field))
  {
   switch (var->type)
   {
    case 131:
    case 129:
    case 130:
     if (!var->varcharsize && !var->arrsize)
     {

      for (act_tuple = 0; act_tuple < ntuples; act_tuple++)
       len += strlen(PQgetvalue(results, act_tuple, act_field)) + 1;
      len *= var->offset;
      len += (ntuples + 1) * sizeof(char *);
     }
     else
     {
      var->varcharsize = 0;

      for (act_tuple = 0; act_tuple < ntuples; act_tuple++)
      {
       int len = strlen(PQgetvalue(results, act_tuple, act_field)) + 1;

       if (len > var->varcharsize)
        var->varcharsize = len;
      }
      var->offset *= var->varcharsize;
      len = var->offset * ntuples;
     }
     break;
    case 128:
     len = ntuples * (var->varcharsize + sizeof(int));
     break;
    default:
     len = var->offset * ntuples;
     break;
   }
  }
  else
  {
   for (act_tuple = 0; act_tuple < ntuples; act_tuple++)
    len += PQgetlength(results, act_tuple, act_field);
  }

  ecpg_log("ecpg_store_result on line %d: allocating memory for %d tuples\n", stmt->lineno, ntuples);
  var->value = (char *) ecpg_auto_alloc(len, stmt->lineno);
  if (!var->value)
   return 0;
  *((char **) var->pointer) = var->value;
 }


 if ((var->ind_arrsize == 0 || var->ind_varcharsize == 0) && var->ind_value == ((void*)0) && var->ind_pointer != ((void*)0))
 {
  int len = var->ind_offset * ntuples;

  var->ind_value = (char *) ecpg_auto_alloc(len, stmt->lineno);
  if (!var->ind_value)
   return 0;
  *((char **) var->ind_pointer) = var->ind_value;
 }


 if (!var->varcharsize && !var->arrsize &&
  (var->type == 131 || var->type == 129 || var->type == 130))
 {



  char **current_string = (char **) var->value;


  char *current_data_location = (char *) &current_string[ntuples + 1];

  for (act_tuple = 0; act_tuple < ntuples && status; act_tuple++)
  {
   int len = strlen(PQgetvalue(results, act_tuple, act_field)) + 1;

   if (!ecpg_get_data(results, act_tuple, act_field, stmt->lineno,
          var->type, var->ind_type, current_data_location,
          var->ind_value, len, 0, var->ind_offset, isarray, stmt->compat, stmt->force_indicator))
    status = 0;
   else
   {
    *current_string = current_data_location;
    current_data_location += len;
    current_string++;
   }
  }


  *current_string = ((void*)0);
 }
 else
 {
  for (act_tuple = 0; act_tuple < ntuples && status; act_tuple++)
  {
   if (!ecpg_get_data(results, act_tuple, act_field, stmt->lineno,
          var->type, var->ind_type, var->value,
          var->ind_value, var->varcharsize, var->offset, var->ind_offset, isarray, stmt->compat, stmt->force_indicator))
    status = 0;
  }
 }
 return status;
}
