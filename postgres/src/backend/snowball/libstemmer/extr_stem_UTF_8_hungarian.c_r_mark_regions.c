
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* I; int l; int c; int* p; } ;


 int a_0 ;
 int find_among (struct SN_env*,int ,int) ;
 int g_v ;
 scalar_t__ in_grouping_U (struct SN_env*,int ,int,int,int) ;
 int out_grouping_U (struct SN_env*,int ,int,int,int) ;
 int skip_utf8 (int*,int,int ,int,int) ;

__attribute__((used)) static int r_mark_regions(struct SN_env * z) {
    z->I[0] = z->l;
    { int c1 = z->c;
        if (in_grouping_U(z, g_v, 97, 369, 0)) goto lab1;
        if (in_grouping_U(z, g_v, 97, 369, 1) < 0) goto lab1;
        { int c2 = z->c;
            if (z->c + 1 >= z->l || z->p[z->c + 1] >> 5 != 3 || !((101187584 >> (z->p[z->c + 1] & 0x1f)) & 1)) goto lab3;
            if (!(find_among(z, a_0, 8))) goto lab3;
            goto lab2;
        lab3:
            z->c = c2;
            { int ret = skip_utf8(z->p, z->c, 0, z->l, 1);
                if (ret < 0) goto lab1;
                z->c = ret;
            }
        }
    lab2:
        z->I[0] = z->c;
        goto lab0;
    lab1:
        z->c = c1;
        if (out_grouping_U(z, g_v, 97, 369, 0)) return 0;
        {
            int ret = out_grouping_U(z, g_v, 97, 369, 1);
            if (ret < 0) return 0;
            z->c += ret;
        }
        z->I[0] = z->c;
    }
lab0:
    return 1;
}
