
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol ;
struct SN_env {int l; int p; } ;


 int CAPACITY (int *) ;
 int SET_SIZE (int *,int) ;
 int * increase_size (int *,int) ;
 int memmove (int *,int ,int) ;

extern symbol * assign_to(struct SN_env * z, symbol * p) {
    int len = z->l;
    if (CAPACITY(p) < len) {
        p = increase_size(p, len);
        if (p == ((void*)0))
            return ((void*)0);
    }
    memmove(p, z->p, len * sizeof(symbol));
    SET_SIZE(p, len);
    return p;
}
