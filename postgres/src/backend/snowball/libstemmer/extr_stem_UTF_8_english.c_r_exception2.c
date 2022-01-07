
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; } ;


 int a_9 ;
 int find_among_b (struct SN_env*,int ,int) ;

__attribute__((used)) static int r_exception2(struct SN_env * z) {
    z->ket = z->c;
    if (z->c - 5 <= z->lb || (z->p[z->c - 1] != 100 && z->p[z->c - 1] != 103)) return 0;
    if (!(find_among_b(z, a_9, 8))) return 0;
    z->bra = z->c;
    if (z->c > z->lb) return 0;
    return 1;
}
