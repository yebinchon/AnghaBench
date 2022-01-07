
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_diag_msg {int dummy; } ;
struct nlmsghdr {int nlmsg_type; scalar_t__ nlmsg_len; } ;
struct nlmsgerr {int error; } ;
struct list_head {int dummy; } ;
typedef int ssize_t ;
typedef int buf ;


 int AF_NETLINK ;
 int EXIT_FAILURE ;
 int NETLINK_SOCK_DIAG ;
 struct nlmsgerr* NLMSG_DATA (struct nlmsghdr const*) ;
 int NLMSG_DONE ;
 int NLMSG_ERROR ;
 scalar_t__ NLMSG_LENGTH (int) ;
 struct nlmsghdr* NLMSG_NEXT (struct nlmsghdr const*,int) ;
 scalar_t__ NLMSG_OK (struct nlmsghdr const*,int) ;
 int SOCK_DIAG_BY_FAMILY ;
 int SOCK_RAW ;
 int add_vsock_stat (struct list_head*,struct nlmsgerr*) ;
 int close (int) ;
 int errno ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int perror (char*) ;
 int recv_resp (int,long*,int) ;
 int send_req (int) ;
 int socket (int ,int ,int ) ;
 int stderr ;

__attribute__((used)) static void read_vsock_stat(struct list_head *sockets)
{
 long buf[8192 / sizeof(long)];
 int fd;

 fd = socket(AF_NETLINK, SOCK_RAW, NETLINK_SOCK_DIAG);
 if (fd < 0) {
  perror("socket");
  exit(EXIT_FAILURE);
 }

 send_req(fd);

 for (;;) {
  const struct nlmsghdr *h;
  ssize_t ret;

  ret = recv_resp(fd, buf, sizeof(buf));
  if (ret == 0)
   goto done;
  if (ret < sizeof(*h)) {
   fprintf(stderr, "short read of %zd bytes\n", ret);
   exit(EXIT_FAILURE);
  }

  h = (struct nlmsghdr *)buf;

  while (NLMSG_OK(h, ret)) {
   if (h->nlmsg_type == NLMSG_DONE)
    goto done;

   if (h->nlmsg_type == NLMSG_ERROR) {
    const struct nlmsgerr *err = NLMSG_DATA(h);

    if (h->nlmsg_len < NLMSG_LENGTH(sizeof(*err)))
     fprintf(stderr, "NLMSG_ERROR\n");
    else {
     errno = -err->error;
     perror("NLMSG_ERROR");
    }

    exit(EXIT_FAILURE);
   }

   if (h->nlmsg_type != SOCK_DIAG_BY_FAMILY) {
    fprintf(stderr, "unexpected nlmsg_type %#x\n",
     h->nlmsg_type);
    exit(EXIT_FAILURE);
   }
   if (h->nlmsg_len <
       NLMSG_LENGTH(sizeof(struct vsock_diag_msg))) {
    fprintf(stderr, "short vsock_diag_msg\n");
    exit(EXIT_FAILURE);
   }

   add_vsock_stat(sockets, NLMSG_DATA(h));

   h = NLMSG_NEXT(h, ret);
  }
 }

done:
 close(fd);
}
