
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {scalar_t__ bra; scalar_t__ ket; scalar_t__ l; int * p; } ;


 scalar_t__ SIZE (int *) ;
 int debug (struct SN_env*,int,int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static int slice_check(struct SN_env * z) {

    if (z->bra < 0 ||
        z->bra > z->ket ||
        z->ket > z->l ||
        z->p == ((void*)0) ||
        z->l > SIZE(z->p))
    {




        return -1;
    }
    return 0;
}
