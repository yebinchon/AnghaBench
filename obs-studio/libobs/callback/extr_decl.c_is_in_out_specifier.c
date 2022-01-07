
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct strref {int dummy; } ;
struct cf_parser {int dummy; } ;


 int CALL_PARAM_IN ;
 int CALL_PARAM_OUT ;
 int err_specifier_exists (struct cf_parser*,char*) ;
 scalar_t__ strref_cmp (struct strref*,char*) ;

__attribute__((used)) static bool is_in_out_specifier(struct cf_parser *cfp, struct strref *name,
    uint32_t *type)
{
 if (strref_cmp(name, "in") == 0) {
  if (*type & CALL_PARAM_IN)
   err_specifier_exists(cfp, "in");

  *type |= CALL_PARAM_IN;

 } else if (strref_cmp(name, "out") == 0) {
  if (*type & CALL_PARAM_OUT)
   err_specifier_exists(cfp, "out");

  *type |= CALL_PARAM_OUT;

 } else {
  return 0;
 }

 return 1;
}
