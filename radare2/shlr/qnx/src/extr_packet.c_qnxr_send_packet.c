
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_8__ {int channel; } ;
struct TYPE_9__ {TYPE_1__ hdr; } ;
struct TYPE_10__ {int* data; TYPE_2__ pkt; } ;
struct TYPE_11__ {char* send_buff; int send_len; int channelwr; int sock; TYPE_3__ tran; } ;
typedef TYPE_4__ libqnxr_t ;






 int eprintf (char*) ;
 int qnxr_send_ch_debug (TYPE_4__*) ;
 int qnxr_send_ch_text (TYPE_4__*) ;
 int r_socket_write (int ,char*,int) ;

int qnxr_send_packet (libqnxr_t *g) {
 if (!g) {
  eprintf ("Initialize libqnxr_t first\n");
  return -1;
 }

 int i;
 ut8 csum = 0;
 char *p;

 p = g->send_buff;
 *p++ = 130;

 for (i = 0; i < g->send_len; i++) {
  ut8 c = g->tran.data[i];
  csum += c;

  switch (c) {
  case 130:
  case 131:
   *p++ = 131;
   c ^= 0x20;
   break;
  }
  *p++ = c;
 }

 csum ^= 0xff;
 switch (csum) {
 case 130:
 case 131:
  *p++ = 131;
  csum ^= 0x20;
  break;
 }
 *p++ = csum;
 *p++ = 130;

 if (g->channelwr != g->tran.pkt.hdr.channel) {
  switch (g->tran.pkt.hdr.channel) {
  case 128:
   qnxr_send_ch_text (g);
   break;
  case 129:
   qnxr_send_ch_debug (g);
   break;
  }
  g->channelwr = g->tran.pkt.hdr.channel;
 }

 return r_socket_write (g->sock, g->send_buff, p - g->send_buff);
}
