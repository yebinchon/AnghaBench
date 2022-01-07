
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol ;
struct SN_env {int dummy; } ;


 int SIZE (int const*) ;
 int eq_s (struct SN_env*,int ,int const*) ;

extern int eq_v(struct SN_env * z, const symbol * p) {
    return eq_s(z, SIZE(p), p);
}
