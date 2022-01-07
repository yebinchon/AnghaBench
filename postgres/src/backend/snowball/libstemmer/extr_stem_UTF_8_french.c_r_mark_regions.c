
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* I; int l; int c; int* p; } ;


 int a_0 ;
 int find_among (struct SN_env*,int ,int) ;
 int g_v ;
 int in_grouping_U (struct SN_env*,int ,int,int,int) ;
 int out_grouping_U (struct SN_env*,int ,int,int,int) ;
 int skip_utf8 (int*,int,int ,int,int) ;

__attribute__((used)) static int r_mark_regions(struct SN_env * z) {
    z->I[0] = z->l;
    z->I[1] = z->l;
    z->I[2] = z->l;
    { int c1 = z->c;
        { int c2 = z->c;
            if (in_grouping_U(z, g_v, 97, 251, 0)) goto lab2;
            if (in_grouping_U(z, g_v, 97, 251, 0)) goto lab2;
            { int ret = skip_utf8(z->p, z->c, 0, z->l, 1);
                if (ret < 0) goto lab2;
                z->c = ret;
            }
            goto lab1;
        lab2:
            z->c = c2;
            if (z->c + 2 >= z->l || z->p[z->c + 2] >> 5 != 3 || !((331776 >> (z->p[z->c + 2] & 0x1f)) & 1)) goto lab3;
            if (!(find_among(z, a_0, 3))) goto lab3;
            goto lab1;
        lab3:
            z->c = c2;
            { int ret = skip_utf8(z->p, z->c, 0, z->l, 1);
                if (ret < 0) goto lab0;
                z->c = ret;
            }
            {
                int ret = out_grouping_U(z, g_v, 97, 251, 1);
                if (ret < 0) goto lab0;
                z->c += ret;
            }
        }
    lab1:
        z->I[0] = z->c;
    lab0:
        z->c = c1;
    }
    { int c3 = z->c;
        {
            int ret = out_grouping_U(z, g_v, 97, 251, 1);
            if (ret < 0) goto lab4;
            z->c += ret;
        }
        {
            int ret = in_grouping_U(z, g_v, 97, 251, 1);
            if (ret < 0) goto lab4;
            z->c += ret;
        }
        z->I[1] = z->c;
        {
            int ret = out_grouping_U(z, g_v, 97, 251, 1);
            if (ret < 0) goto lab4;
            z->c += ret;
        }
        {
            int ret = in_grouping_U(z, g_v, 97, 251, 1);
            if (ret < 0) goto lab4;
            z->c += ret;
        }
        z->I[2] = z->c;
    lab4:
        z->c = c3;
    }
    return 1;
}
