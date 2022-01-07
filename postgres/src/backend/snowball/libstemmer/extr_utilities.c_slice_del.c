
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int dummy; } ;


 int slice_from_s (struct SN_env*,int ,int ) ;

extern int slice_del(struct SN_env * z) {
    return slice_from_s(z, 0, 0);
}
