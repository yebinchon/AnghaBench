
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {int dummy; } ;
typedef enum call_param_type { ____Placeholder_call_param_type } call_param_type ;


 int CALL_PARAM_TYPE_BOOL ;
 int CALL_PARAM_TYPE_FLOAT ;
 int CALL_PARAM_TYPE_INT ;
 int CALL_PARAM_TYPE_PTR ;
 int CALL_PARAM_TYPE_STRING ;
 int CALL_PARAM_TYPE_VOID ;
 scalar_t__ strref_cmp (struct strref*,char*) ;

__attribute__((used)) static bool get_type(struct strref *ref, enum call_param_type *type,
       bool is_return)
{
 if (strref_cmp(ref, "int") == 0)
  *type = CALL_PARAM_TYPE_INT;
 else if (strref_cmp(ref, "float") == 0)
  *type = CALL_PARAM_TYPE_FLOAT;
 else if (strref_cmp(ref, "bool") == 0)
  *type = CALL_PARAM_TYPE_BOOL;
 else if (strref_cmp(ref, "ptr") == 0)
  *type = CALL_PARAM_TYPE_PTR;
 else if (strref_cmp(ref, "string") == 0)
  *type = CALL_PARAM_TYPE_STRING;
 else if (is_return && strref_cmp(ref, "void") == 0)
  *type = CALL_PARAM_TYPE_VOID;
 else
  return 0;

 return 1;
}
