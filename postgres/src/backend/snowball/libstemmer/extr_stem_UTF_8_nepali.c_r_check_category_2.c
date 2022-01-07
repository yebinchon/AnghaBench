
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; } ;


 int a_1 ;
 int find_among_b (struct SN_env*,int ,int) ;

__attribute__((used)) static int r_check_category_2(struct SN_env * z) {
    z->ket = z->c;
    if (z->c - 2 <= z->lb || z->p[z->c - 1] >> 5 != 4 || !((262 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0;
    if (!(find_among_b(z, a_1, 3))) return 0;
    z->bra = z->c;
    return 1;
}
