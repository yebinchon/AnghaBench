
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* I; int l; int c; } ;


 int g_v ;
 int in_grouping (struct SN_env*,int ,int,int,int) ;
 int out_grouping (struct SN_env*,int ,int,int,int) ;

__attribute__((used)) static int r_mark_regions(struct SN_env * z) {
    z->I[0] = z->l;
    z->I[1] = z->l;
    z->I[2] = z->l;
    { int c1 = z->c;
        { int c2 = z->c;
            if (in_grouping(z, g_v, 97, 249, 0)) goto lab2;
            { int c3 = z->c;
                if (out_grouping(z, g_v, 97, 249, 0)) goto lab4;
                {
                    int ret = out_grouping(z, g_v, 97, 249, 1);
                    if (ret < 0) goto lab4;
                    z->c += ret;
                }
                goto lab3;
            lab4:
                z->c = c3;
                if (in_grouping(z, g_v, 97, 249, 0)) goto lab2;
                {
                    int ret = in_grouping(z, g_v, 97, 249, 1);
                    if (ret < 0) goto lab2;
                    z->c += ret;
                }
            }
        lab3:
            goto lab1;
        lab2:
            z->c = c2;
            if (out_grouping(z, g_v, 97, 249, 0)) goto lab0;
            { int c4 = z->c;
                if (out_grouping(z, g_v, 97, 249, 0)) goto lab6;
                {
                    int ret = out_grouping(z, g_v, 97, 249, 1);
                    if (ret < 0) goto lab6;
                    z->c += ret;
                }
                goto lab5;
            lab6:
                z->c = c4;
                if (in_grouping(z, g_v, 97, 249, 0)) goto lab0;
                if (z->c >= z->l) goto lab0;
                z->c++;
            }
        lab5:
            ;
        }
    lab1:
        z->I[0] = z->c;
    lab0:
        z->c = c1;
    }
    { int c5 = z->c;
        {
            int ret = out_grouping(z, g_v, 97, 249, 1);
            if (ret < 0) goto lab7;
            z->c += ret;
        }
        {
            int ret = in_grouping(z, g_v, 97, 249, 1);
            if (ret < 0) goto lab7;
            z->c += ret;
        }
        z->I[1] = z->c;
        {
            int ret = out_grouping(z, g_v, 97, 249, 1);
            if (ret < 0) goto lab7;
            z->c += ret;
        }
        {
            int ret = in_grouping(z, g_v, 97, 249, 1);
            if (ret < 0) goto lab7;
            z->c += ret;
        }
        z->I[2] = z->c;
    lab7:
        z->c = c5;
    }
    return 1;
}
