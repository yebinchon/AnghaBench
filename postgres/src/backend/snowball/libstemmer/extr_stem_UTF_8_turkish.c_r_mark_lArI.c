
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int lb; int* p; } ;


 int a_1 ;
 int find_among_b (struct SN_env*,int ,int) ;

__attribute__((used)) static int r_mark_lArI(struct SN_env * z) {
    if (z->c - 3 <= z->lb || (z->p[z->c - 1] != 105 && z->p[z->c - 1] != 177)) return 0;
    if (!(find_among_b(z, a_1, 2))) return 0;
    return 1;
}
