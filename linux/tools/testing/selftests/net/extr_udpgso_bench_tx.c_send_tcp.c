
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_ZEROCOPY ;
 int cfg_payload_len ;
 scalar_t__ cfg_zerocopy ;
 int errno ;
 int error (int,int ,char*) ;
 int send (int,char*,int,int ) ;

__attribute__((used)) static int send_tcp(int fd, char *data)
{
 int ret, done = 0, count = 0;

 while (done < cfg_payload_len) {
  ret = send(fd, data + done, cfg_payload_len - done,
      cfg_zerocopy ? MSG_ZEROCOPY : 0);
  if (ret == -1)
   error(1, errno, "write");

  done += ret;
  count++;
 }

 return count;
}
