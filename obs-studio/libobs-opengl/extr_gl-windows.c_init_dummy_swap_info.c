
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_init_data {int zsformat; int format; } ;


 int GS_RGBA ;
 int GS_ZS_NONE ;

__attribute__((used)) static void init_dummy_swap_info(struct gs_init_data *info)
{
 info->format = GS_RGBA;
 info->zsformat = GS_ZS_NONE;
}
