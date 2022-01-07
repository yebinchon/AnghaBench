
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sk_X509_TRUST_pop_free (int *,int ) ;
 int * trtable ;
 int trtable_free ;

void X509_TRUST_cleanup(void)
{
    sk_X509_TRUST_pop_free(trtable, trtable_free);
    trtable = ((void*)0);
}
