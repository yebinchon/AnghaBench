
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pitem ;


 int OPENSSL_free (int *) ;

void pitem_free(pitem *item)
{
    OPENSSL_free(item);
}
