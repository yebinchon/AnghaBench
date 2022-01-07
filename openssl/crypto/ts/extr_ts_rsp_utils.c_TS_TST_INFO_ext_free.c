
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * extensions; } ;
typedef TYPE_1__ TS_TST_INFO ;


 int X509_EXTENSION_free ;
 int sk_X509_EXTENSION_pop_free (int *,int ) ;

void TS_TST_INFO_ext_free(TS_TST_INFO *a)
{
    if (!a)
        return;
    sk_X509_EXTENSION_pop_free(a->extensions, X509_EXTENSION_free);
    a->extensions = ((void*)0);
}
