
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int bra; int c; int l; int* p; int ket; int* B; } ;


 int a_3 ;
 int find_among (struct SN_env*,int ,int) ;
 int len_utf8 (int*) ;

__attribute__((used)) static int r_Checks1(struct SN_env * z) {
    int among_var;
    z->bra = z->c;
    if (z->c + 3 >= z->l || (z->p[z->c + 3] != 132 && z->p[z->c + 3] != 167)) return 0;
    among_var = find_among(z, a_3, 4);
    if (!(among_var)) return 0;
    z->ket = z->c;
    switch (among_var) {
        case 1:
            if (!(len_utf8(z->p) > 4)) return 0;
            z->B[0] = 1;
            z->B[1] = 0;
            z->B[2] = 1;
            break;
        case 2:
            if (!(len_utf8(z->p) > 3)) return 0;
            z->B[0] = 1;
            z->B[1] = 0;
            z->B[2] = 1;
            break;
    }
    return 1;
}
