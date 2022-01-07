
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frame_fragment; scalar_t__ fragment; int frame; } ;
struct context {TYPE_1__ c2; } ;


 int D_MTU_INFO ;
 int frame_print (int *,int ,char*) ;

__attribute__((used)) static void
do_print_data_channel_mtu_parms(struct context *c)
{
    frame_print(&c->c2.frame, D_MTU_INFO, "Data Channel MTU parms");







}
