
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ECPGgeneric_varchar {char* arr; int len; } ;
typedef enum ECPGttype { ____Placeholder_ECPGttype } ECPGttype ;


 int ECPG_SQLSTATE_RESTRICTED_DATA_TYPE_ATTRIBUTE_VIOLATION ;
 int ECPG_VAR_NOT_CHAR ;




 int ecpg_raise (int,int ,int ,int *) ;
 int memcpy (char*,char*,int) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static bool
get_char_item(int lineno, void *var, enum ECPGttype vartype, char *value, int varcharsize)
{
 switch (vartype)
 {
  case 131:
  case 129:
  case 130:
   strncpy((char *) var, value, varcharsize);
   break;
  case 128:
   {
    struct ECPGgeneric_varchar *variable =
    (struct ECPGgeneric_varchar *) var;

    if (varcharsize == 0)
     memcpy(variable->arr, value, strlen(value));
    else
     strncpy(variable->arr, value, varcharsize);

    variable->len = strlen(value);
    if (varcharsize > 0 && variable->len > varcharsize)
     variable->len = varcharsize;
   }
   break;
  default:
   ecpg_raise(lineno, ECPG_VAR_NOT_CHAR, ECPG_SQLSTATE_RESTRICTED_DATA_TYPE_ATTRIBUTE_VIOLATION, ((void*)0));
   return 0;
 }

 return 1;
}
