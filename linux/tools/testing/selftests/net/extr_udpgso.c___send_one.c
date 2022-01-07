
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msghdr {int msg_flags; TYPE_1__* msg_iov; } ;
struct TYPE_2__ {int iov_len; } ;


 scalar_t__ EINVAL ;
 scalar_t__ EMSGSIZE ;
 scalar_t__ ENOMEM ;
 scalar_t__ errno ;
 int error (int,scalar_t__,char*,...) ;
 int sendmsg (int,struct msghdr*,int) ;

__attribute__((used)) static bool __send_one(int fd, struct msghdr *msg, int flags)
{
 int ret;

 ret = sendmsg(fd, msg, flags);
 if (ret == -1 &&
     (errno == EMSGSIZE || errno == ENOMEM || errno == EINVAL))
  return 0;
 if (ret == -1)
  error(1, errno, "sendmsg");
 if (ret != msg->msg_iov->iov_len)
  error(1, 0, "sendto: %d != %lu", ret, msg->msg_iov->iov_len);
 if (msg->msg_flags)
  error(1, 0, "sendmsg: return flags 0x%x\n", msg->msg_flags);

 return 1;
}
