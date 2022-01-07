
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ttype; int typoid; } ;
struct TYPE_6__ {int lineno; int isnull; int freeval; int dno; int value; TYPE_2__* datatype; int refname; int dtype; } ;
typedef int PLpgSQL_variable ;
typedef TYPE_1__ PLpgSQL_var ;
typedef TYPE_2__ PLpgSQL_type ;
typedef int PLpgSQL_rec ;
typedef int PLpgSQL_datum ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int PLPGSQL_DTYPE_VAR ;
 int PLPGSQL_NSTYPE_VAR ;



 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,int ) ;
 int format_type_be (int ) ;
 TYPE_1__* palloc0 (int) ;
 int plpgsql_adddatum (int *) ;
 int * plpgsql_build_record (char const*,int,TYPE_2__*,int ,int) ;
 int plpgsql_ns_additem (int ,int ,char const*) ;
 int pstrdup (char const*) ;

PLpgSQL_variable *
plpgsql_build_variable(const char *refname, int lineno, PLpgSQL_type *dtype,
        bool add2namespace)
{
 PLpgSQL_variable *result;

 switch (dtype->ttype)
 {
  case 128:
   {

    PLpgSQL_var *var;

    var = palloc0(sizeof(PLpgSQL_var));
    var->dtype = PLPGSQL_DTYPE_VAR;
    var->refname = pstrdup(refname);
    var->lineno = lineno;
    var->datatype = dtype;



    var->value = 0;
    var->isnull = 1;
    var->freeval = 0;

    plpgsql_adddatum((PLpgSQL_datum *) var);
    if (add2namespace)
     plpgsql_ns_additem(PLPGSQL_NSTYPE_VAR,
            var->dno,
            refname);
    result = (PLpgSQL_variable *) var;
    break;
   }
  case 129:
   {

    PLpgSQL_rec *rec;

    rec = plpgsql_build_record(refname, lineno,
             dtype, dtype->typoid,
             add2namespace);
    result = (PLpgSQL_variable *) rec;
    break;
   }
  case 130:
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("variable \"%s\" has pseudo-type %s",
       refname, format_type_be(dtype->typoid))));
   result = ((void*)0);
   break;
  default:
   elog(ERROR, "unrecognized ttype: %d", dtype->ttype);
   result = ((void*)0);
   break;
 }

 return result;
}
