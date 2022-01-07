
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ext_list ;
 int ext_list_free ;
 int sk_X509V3_EXT_METHOD_pop_free (int *,int ) ;

void X509V3_EXT_cleanup(void)
{
    sk_X509V3_EXT_METHOD_pop_free(ext_list, ext_list_free);
    ext_list = ((void*)0);
}
