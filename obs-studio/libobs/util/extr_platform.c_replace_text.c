
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int member_0; } ;


 int dstr_cat (struct dstr*,char const*) ;
 int dstr_cat_dstr (struct dstr*,struct dstr*) ;
 int dstr_copy_dstr (struct dstr*,struct dstr*) ;
 int dstr_free (struct dstr*) ;
 int dstr_left (struct dstr*,struct dstr*,size_t) ;
 int dstr_right (struct dstr*,struct dstr*,size_t) ;

__attribute__((used)) static void replace_text(struct dstr *str, size_t pos, size_t len,
    const char *new_text)
{
 struct dstr front = {0};
 struct dstr back = {0};

 dstr_left(&front, str, pos);
 dstr_right(&back, str, pos + len);
 dstr_copy_dstr(str, &front);
 dstr_cat(str, new_text);
 dstr_cat_dstr(str, &back);
 dstr_free(&front);
 dstr_free(&back);
}
