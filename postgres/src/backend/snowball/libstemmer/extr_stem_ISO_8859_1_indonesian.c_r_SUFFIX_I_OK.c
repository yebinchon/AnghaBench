
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* I; int l; int c; scalar_t__ lb; char* p; } ;



__attribute__((used)) static int r_SUFFIX_I_OK(struct SN_env * z) {
    if (!(z->I[1] <= 2)) return 0;
    { int m1 = z->l - z->c; (void)m1;
        if (z->c <= z->lb || z->p[z->c - 1] != 's') goto lab0;
        z->c--;
        return 0;
    lab0:
        z->c = z->l - m1;
    }
    return 1;
}
