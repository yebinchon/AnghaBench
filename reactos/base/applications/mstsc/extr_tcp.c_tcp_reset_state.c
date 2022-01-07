
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * channel_hdr; int * rdp_hdr; int * sec_hdr; int * mcs_hdr; int * iso_hdr; scalar_t__ size; int * data; int * end; int * p; } ;
struct TYPE_3__ {int * channel_hdr; int * rdp_hdr; int * sec_hdr; int * mcs_hdr; int * iso_hdr; scalar_t__ size; int * data; int * end; int * p; } ;


 int STREAM_COUNT ;
 TYPE_2__ g_in ;
 TYPE_1__* g_out ;
 int xfree (int *) ;

void
tcp_reset_state(void)
{
 int i;


 if (g_in.data != ((void*)0))
  xfree(g_in.data);
 g_in.p = ((void*)0);
 g_in.end = ((void*)0);
 g_in.data = ((void*)0);
 g_in.size = 0;
 g_in.iso_hdr = ((void*)0);
 g_in.mcs_hdr = ((void*)0);
 g_in.sec_hdr = ((void*)0);
 g_in.rdp_hdr = ((void*)0);
 g_in.channel_hdr = ((void*)0);


 for (i = 0; i < STREAM_COUNT; i++)
 {
  if (g_out[i].data != ((void*)0))
   xfree(g_out[i].data);
  g_out[i].p = ((void*)0);
  g_out[i].end = ((void*)0);
  g_out[i].data = ((void*)0);
  g_out[i].size = 0;
  g_out[i].iso_hdr = ((void*)0);
  g_out[i].mcs_hdr = ((void*)0);
  g_out[i].sec_hdr = ((void*)0);
  g_out[i].rdp_hdr = ((void*)0);
  g_out[i].channel_hdr = ((void*)0);
 }
}
