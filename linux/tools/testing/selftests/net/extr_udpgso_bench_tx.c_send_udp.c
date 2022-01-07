
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_ZEROCOPY ;
 int cfg_alen ;
 scalar_t__ cfg_connected ;
 int cfg_dst_addr ;
 int cfg_mss ;
 int cfg_payload_len ;
 scalar_t__ cfg_zerocopy ;
 int errno ;
 int error (int,int ,char*,...) ;
 int sendto (int,char*,int,int ,void*,int ) ;

__attribute__((used)) static int send_udp(int fd, char *data)
{
 int ret, total_len, len, count = 0;

 total_len = cfg_payload_len;

 while (total_len) {
  len = total_len < cfg_mss ? total_len : cfg_mss;

  ret = sendto(fd, data, len, cfg_zerocopy ? MSG_ZEROCOPY : 0,
        cfg_connected ? ((void*)0) : (void *)&cfg_dst_addr,
        cfg_connected ? 0 : cfg_alen);
  if (ret == -1)
   error(1, errno, "write");
  if (ret != len)
   error(1, errno, "write: %uB != %uB\n", ret, len);

  total_len -= len;
  count++;
 }

 return count;
}
