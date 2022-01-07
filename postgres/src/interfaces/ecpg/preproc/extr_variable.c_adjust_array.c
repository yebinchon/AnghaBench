
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ECPGttype { ____Placeholder_ECPGttype } ECPGttype ;
 int PARSE_ERROR ;
 scalar_t__ atoi (char*) ;
 char* mm_strdup (char*) ;
 int mmfatal (int ,char*,...) ;
 int ngettext (char*,char*,int) ;
 int strcmp (char*,char*) ;

void
adjust_array(enum ECPGttype type_enum, char **dimension, char **length, char *type_dimension, char *type_index, int pointer_len, bool type_definition)
{
 if (atoi(type_index) >= 0)
 {
  if (atoi(*length) >= 0)
   mmfatal(PARSE_ERROR, "multidimensional arrays are not supported");

  *length = type_index;
 }

 if (atoi(type_dimension) >= 0)
 {
  if (atoi(*dimension) >= 0 && atoi(*length) >= 0)
   mmfatal(PARSE_ERROR, "multidimensional arrays are not supported");

  if (atoi(*dimension) >= 0)
   *length = *dimension;

  *dimension = type_dimension;
 }

 if (pointer_len > 2)
  mmfatal(PARSE_ERROR, ngettext("multilevel pointers (more than 2 levels) are not supported; found %d level",
           "multilevel pointers (more than 2 levels) are not supported; found %d levels", pointer_len),
    pointer_len);

 if (pointer_len > 1 && type_enum != 133 && type_enum != 129 && type_enum != 132)
  mmfatal(PARSE_ERROR, "pointer to pointer is not supported for this data type");

 if (pointer_len > 1 && (atoi(*length) >= 0 || atoi(*dimension) >= 0))
  mmfatal(PARSE_ERROR, "multidimensional arrays are not supported");

 if (atoi(*length) >= 0 && atoi(*dimension) >= 0 && pointer_len)
  mmfatal(PARSE_ERROR, "multidimensional arrays are not supported");

 switch (type_enum)
 {
  case 131:
  case 130:

   if (pointer_len)
   {
    *length = *dimension;
    *dimension = mm_strdup("0");
   }

   if (atoi(*length) >= 0)
    mmfatal(PARSE_ERROR, "multidimensional arrays for structures are not supported");

   break;
  case 128:
  case 134:

   if (pointer_len)
    *dimension = mm_strdup("0");


   if (atoi(*length) < 0)
   {
    *length = *dimension;
    *dimension = mm_strdup("-1");
   }

   break;
  case 133:
  case 129:
  case 132:

   if (pointer_len == 2)
   {
    *length = *dimension = mm_strdup("0");
    break;
   }


   if (pointer_len == 1)
    *length = mm_strdup("0");


   if (atoi(*length) < 0)
   {




    if (atoi(*dimension) < 0 && !type_definition)





     *length = mm_strdup("1");
    else if (strcmp(*dimension, "0") == 0)
     *length = mm_strdup("-1");
    else
     *length = *dimension;

    *dimension = mm_strdup("-1");
   }
   break;
  default:

   if (pointer_len)
   {
    *length = *dimension;
    *dimension = mm_strdup("0");
   }

   if (atoi(*length) >= 0)
    mmfatal(PARSE_ERROR, "multidimensional arrays for simple data types are not supported");

   break;
 }
}
