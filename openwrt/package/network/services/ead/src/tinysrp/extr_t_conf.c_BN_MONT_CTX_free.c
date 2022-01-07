
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int Ni; int N; int RR; } ;
typedef TYPE_1__ BN_MONT_CTX ;


 int BN_FLG_MALLOCED ;
 int BN_free (int *) ;
 int free (TYPE_1__*) ;

void BN_MONT_CTX_free(BN_MONT_CTX *mont)
 {
 if(mont == ((void*)0))
     return;

 BN_free(&(mont->RR));
 BN_free(&(mont->N));
 BN_free(&(mont->Ni));
 if (mont->flags & BN_FLG_MALLOCED)
  free(mont);
 }
