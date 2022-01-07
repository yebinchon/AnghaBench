
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {int len; int array; } ;
struct dstr {scalar_t__ array; } ;


 int dstr_free (struct dstr*) ;
 int dstr_ncopy (struct dstr*,int ,int ) ;

void dstr_copy_strref(struct dstr *dst, const struct strref *src)
{
 if (dst->array)
  dstr_free(dst);

 dstr_ncopy(dst, src->array, src->len);
}
