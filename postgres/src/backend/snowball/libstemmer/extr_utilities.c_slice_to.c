
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol ;
struct SN_env {int ket; int bra; int p; } ;


 int CAPACITY (int *) ;
 int SET_SIZE (int *,int) ;
 int * increase_size (int *,int) ;
 int lose_s (int *) ;
 int memmove (int *,int,int) ;
 scalar_t__ slice_check (struct SN_env*) ;

extern symbol * slice_to(struct SN_env * z, symbol * p) {
    if (slice_check(z)) {
        lose_s(p);
        return ((void*)0);
    }
    {
        int len = z->ket - z->bra;
        if (CAPACITY(p) < len) {
            p = increase_size(p, len);
            if (p == ((void*)0))
                return ((void*)0);
        }
        memmove(p, z->p + z->bra, len * sizeof(symbol));
        SET_SIZE(p, len);
    }
    return p;
}
