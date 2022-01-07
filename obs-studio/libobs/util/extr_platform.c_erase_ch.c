
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {scalar_t__ array; int member_0; } ;


 int dstr_cat (struct dstr*,scalar_t__) ;
 int dstr_free (struct dstr*) ;
 int dstr_left (struct dstr*,struct dstr*,size_t) ;

__attribute__((used)) static void erase_ch(struct dstr *str, size_t pos)
{
 struct dstr new_str = {0};
 dstr_left(&new_str, str, pos);
 dstr_cat(&new_str, str->array + pos + 1);
 dstr_free(str);
 *str = new_str;
}
