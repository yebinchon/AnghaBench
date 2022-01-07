
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol ;
struct SN_env {int ket; int bra; } ;


 int replace_s (struct SN_env*,int ,int ,int,int const*,int *) ;
 scalar_t__ slice_check (struct SN_env*) ;

extern int slice_from_s(struct SN_env * z, int s_size, const symbol * s) {
    if (slice_check(z)) return -1;
    return replace_s(z, z->bra, z->ket, s_size, s, ((void*)0));
}
