
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol ;
struct SN_env {scalar_t__ c; int l; } ;


 int replace_s (struct SN_env*,int ,int ,int,int const*,int *) ;

extern int SN_set_current(struct SN_env * z, int size, const symbol * s)
{
    int err = replace_s(z, 0, z->l, size, s, ((void*)0));
    z->c = 0;
    return err;
}
