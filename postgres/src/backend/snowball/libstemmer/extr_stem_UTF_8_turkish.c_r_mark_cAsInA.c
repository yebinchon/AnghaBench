
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int lb; int* p; } ;


 int a_19 ;
 int find_among_b (struct SN_env*,int ,int) ;

__attribute__((used)) static int r_mark_cAsInA(struct SN_env * z) {
    if (z->c - 5 <= z->lb || (z->p[z->c - 1] != 97 && z->p[z->c - 1] != 101)) return 0;
    if (!(find_among_b(z, a_19, 2))) return 0;
    return 1;
}
