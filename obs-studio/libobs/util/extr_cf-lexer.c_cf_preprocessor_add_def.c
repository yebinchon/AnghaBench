
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dstr {int array; } ;
struct cf_preprocessor {int defines; } ;
struct TYPE_2__ {int str; } ;
struct cf_def {TYPE_1__ name; } ;


 int cf_addwarning (struct cf_preprocessor*,TYPE_1__*,char*,int ,int *,int *) ;
 int cf_def_free (struct cf_def*) ;
 struct cf_def* cf_preprocess_get_def (struct cf_preprocessor*,int *) ;
 int da_push_back (int ,struct cf_def*) ;
 int dstr_init_copy_strref (struct dstr*,int *) ;
 int memcpy (struct cf_def*,struct cf_def*,int) ;

void cf_preprocessor_add_def(struct cf_preprocessor *pp, struct cf_def *def)
{
 struct cf_def *existing = cf_preprocess_get_def(pp, &def->name.str);

 if (existing) {
  struct dstr name;
  dstr_init_copy_strref(&name, &def->name.str);
  cf_addwarning(pp, &def->name, "Token $1 already defined",
         name.array, ((void*)0), ((void*)0));
  cf_addwarning(pp, &existing->name,
         "Previous definition of $1 is here", name.array,
         ((void*)0), ((void*)0));

  cf_def_free(existing);
  memcpy(existing, def, sizeof(struct cf_def));
 } else {
  da_push_back(pp->defines, def);
 }
}
