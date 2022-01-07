
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int dummy; } ;


 int g_v ;
 int g_v_WXY ;
 scalar_t__ in_grouping_b_U (struct SN_env*,int ,int,int,int ) ;
 scalar_t__ out_grouping_b_U (struct SN_env*,int ,int,int,int ) ;

__attribute__((used)) static int r_shortv(struct SN_env * z) {
    if (out_grouping_b_U(z, g_v_WXY, 89, 121, 0)) return 0;
    if (in_grouping_b_U(z, g_v, 97, 121, 0)) return 0;
    if (out_grouping_b_U(z, g_v, 97, 121, 0)) return 0;
    return 1;
}
