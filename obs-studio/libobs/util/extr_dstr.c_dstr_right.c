
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {scalar_t__ len; scalar_t__ array; } ;


 int dstr_copy_dstr (struct dstr*,struct dstr*) ;
 int dstr_free (struct dstr*) ;
 int dstr_init (struct dstr*) ;
 int dstr_ncopy (struct dstr*,scalar_t__,scalar_t__) ;

void dstr_right(struct dstr *dst, const struct dstr *str, const size_t pos)
{
 struct dstr temp;
 dstr_init(&temp);
 dstr_ncopy(&temp, str->array + pos, str->len - pos);
 dstr_copy_dstr(dst, &temp);
 dstr_free(&temp);
}
