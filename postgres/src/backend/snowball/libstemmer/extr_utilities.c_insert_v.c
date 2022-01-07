
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol ;
struct SN_env {int dummy; } ;


 int SIZE (int const*) ;
 int insert_s (struct SN_env*,int,int,int ,int const*) ;

extern int insert_v(struct SN_env * z, int bra, int ket, const symbol * p) {
    return insert_s(z, bra, ket, SIZE(p), p);
}
