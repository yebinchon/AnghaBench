
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int member_0; } ;
typedef int obs_key_t ;


 int dstr_cat (struct dstr*,char*) ;
 int dstr_cat_dstr (struct dstr*,struct dstr*) ;
 int dstr_free (struct dstr*) ;
 int dstr_is_empty (struct dstr*) ;
 int obs_key_to_str (int ,struct dstr*) ;

__attribute__((used)) static inline void add_combo_key(obs_key_t key, struct dstr *str)
{
 struct dstr key_str = {0};

 obs_key_to_str(key, &key_str);

 if (!dstr_is_empty(&key_str)) {
  if (!dstr_is_empty(str)) {
   dstr_cat(str, " + ");
  }
  dstr_cat_dstr(str, &key_str);
 }

 dstr_free(&key_str);
}
