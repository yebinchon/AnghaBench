
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int lb; int* p; } ;


 int a_2 ;
 int find_among_b (struct SN_env*,int ,int) ;

__attribute__((used)) static int r_double(struct SN_env * z) {
    { int m_test1 = z->l - z->c;
        if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((106790108 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0;
        if (!(find_among_b(z, a_2, 23))) return 0;
        z->c = z->l - m_test1;
    }
    return 1;
}
