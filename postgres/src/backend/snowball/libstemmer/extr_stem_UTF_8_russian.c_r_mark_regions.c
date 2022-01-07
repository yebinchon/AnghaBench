
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* I; int l; int c; } ;


 int g_v ;
 int in_grouping_U (struct SN_env*,int ,int,int,int) ;
 int out_grouping_U (struct SN_env*,int ,int,int,int) ;

__attribute__((used)) static int r_mark_regions(struct SN_env * z) {
    z->I[0] = z->l;
    z->I[1] = z->l;
    { int c1 = z->c;
        {
            int ret = out_grouping_U(z, g_v, 1072, 1103, 1);
            if (ret < 0) goto lab0;
            z->c += ret;
        }
        z->I[0] = z->c;
        {
            int ret = in_grouping_U(z, g_v, 1072, 1103, 1);
            if (ret < 0) goto lab0;
            z->c += ret;
        }
        {
            int ret = out_grouping_U(z, g_v, 1072, 1103, 1);
            if (ret < 0) goto lab0;
            z->c += ret;
        }
        {
            int ret = in_grouping_U(z, g_v, 1072, 1103, 1);
            if (ret < 0) goto lab0;
            z->c += ret;
        }
        z->I[1] = z->c;
    lab0:
        z->c = c1;
    }
    return 1;
}
