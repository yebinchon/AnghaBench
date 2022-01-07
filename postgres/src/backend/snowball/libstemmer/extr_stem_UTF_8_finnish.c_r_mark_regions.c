
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* I; int l; int c; } ;


 int g_V1 ;
 int in_grouping_U (struct SN_env*,int ,int,int,int) ;
 scalar_t__ out_grouping_U (struct SN_env*,int ,int,int,int) ;

__attribute__((used)) static int r_mark_regions(struct SN_env * z) {
    z->I[0] = z->l;
    z->I[1] = z->l;
    if (out_grouping_U(z, g_V1, 97, 246, 1) < 0) return 0;
    {
        int ret = in_grouping_U(z, g_V1, 97, 246, 1);
        if (ret < 0) return 0;
        z->c += ret;
    }
    z->I[0] = z->c;
    if (out_grouping_U(z, g_V1, 97, 246, 1) < 0) return 0;
    {
        int ret = in_grouping_U(z, g_V1, 97, 246, 1);
        if (ret < 0) return 0;
        z->c += ret;
    }
    z->I[1] = z->c;
    return 1;
}
