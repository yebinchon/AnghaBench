
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int array; int len; } ;


 int dstr_free (struct dstr*) ;
 int os_mbs_to_utf8_ptr (char const*,int ,int *) ;

void dstr_from_mbs(struct dstr *dst, const char *mbstr)
{
 dstr_free(dst);
 dst->len = os_mbs_to_utf8_ptr(mbstr, 0, &dst->array);
}
