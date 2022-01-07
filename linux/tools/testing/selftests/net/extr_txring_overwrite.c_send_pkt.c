
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpacket_hdr {scalar_t__ tp_status; int tp_len; } ;


 scalar_t__ TP_STATUS_AVAILABLE ;
 scalar_t__ TP_STATUS_SEND_REQUEST ;
 int build_packet (void*,int ,char) ;
 int cfg_frame_size ;
 int errno ;
 int error (int,int ,char*) ;
 int eth_off ;
 int sendto (int,int *,int ,int ,int *,int ) ;
 int usleep (int) ;

__attribute__((used)) static void send_pkt(int fdt, void *slot, char payload_char)
{
 struct tpacket_hdr *header = slot;
 int ret;

 while (header->tp_status != TP_STATUS_AVAILABLE)
  usleep(1000);

 build_packet(slot + eth_off, cfg_frame_size, payload_char);

 header->tp_len = cfg_frame_size;
 header->tp_status = TP_STATUS_SEND_REQUEST;

 ret = sendto(fdt, ((void*)0), 0, 0, ((void*)0), 0);
 if (ret == -1)
  error(1, errno, "kick tx");
}
