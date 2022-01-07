
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {char const* array; int len; } ;
struct cf_preprocessor {int dummy; } ;


 int cf_preprocess_remove_def_strref (struct cf_preprocessor*,struct strref*) ;
 int strlen (char const*) ;

void cf_preprocessor_remove_def(struct cf_preprocessor *pp,
    const char *def_name)
{
 struct strref ref;
 ref.array = def_name;
 ref.len = strlen(def_name);
 cf_preprocess_remove_def_strref(pp, &ref);
}
