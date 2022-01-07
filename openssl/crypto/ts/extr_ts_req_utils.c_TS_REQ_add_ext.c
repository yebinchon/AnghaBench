
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_EXTENSION ;
struct TYPE_3__ {int extensions; } ;
typedef TYPE_1__ TS_REQ ;


 int * X509v3_add_ext (int *,int *,int) ;

int TS_REQ_add_ext(TS_REQ *a, X509_EXTENSION *ex, int loc)
{
    return X509v3_add_ext(&a->extensions, ex, loc) != ((void*)0);
}
