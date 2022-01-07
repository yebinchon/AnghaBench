
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {scalar_t__ array; } ;


 int dstr_copy_dstr (struct dstr*,struct dstr const*) ;
 int dstr_free (struct dstr*) ;
 int dstr_init (struct dstr*) ;
 int dstr_ncopy (struct dstr*,scalar_t__,size_t const) ;

void dstr_mid(struct dstr *dst, const struct dstr *str, const size_t start,
       const size_t count)
{
 struct dstr temp;
 dstr_init(&temp);
 dstr_copy_dstr(&temp, str);
 dstr_ncopy(dst, temp.array + start, count);
 dstr_free(&temp);
}
