
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;


 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int SOMAXCONN ;
 int addrinfo_to_text (struct addrinfo*,char*,size_t const) ;
 int bind (int,int ,int ) ;
 int close (int) ;
 int dbg (char*,char*) ;
 int err (char*,char*,int ,int ) ;
 int errno ;
 int info (char*,char*) ;
 int listen (int,int ) ;
 int socket (int ,int ,int ) ;
 int strerror (int ) ;
 int usbip_net_set_nodelay (int) ;
 int usbip_net_set_reuseaddr (int) ;
 int usbip_net_set_v6only (int) ;

__attribute__((used)) static int listen_all_addrinfo(struct addrinfo *ai_head, int sockfdlist[],
        int maxsockfd)
{
 struct addrinfo *ai;
 int ret, nsockfd = 0;
 const size_t ai_buf_size = NI_MAXHOST + NI_MAXSERV + 2;
 char ai_buf[ai_buf_size];

 for (ai = ai_head; ai && nsockfd < maxsockfd; ai = ai->ai_next) {
  int sock;

  addrinfo_to_text(ai, ai_buf, ai_buf_size);
  dbg("opening %s", ai_buf);
  sock = socket(ai->ai_family, ai->ai_socktype, ai->ai_protocol);
  if (sock < 0) {
   err("socket: %s: %d (%s)",
       ai_buf, errno, strerror(errno));
   continue;
  }

  usbip_net_set_reuseaddr(sock);
  usbip_net_set_nodelay(sock);


  usbip_net_set_v6only(sock);

  ret = bind(sock, ai->ai_addr, ai->ai_addrlen);
  if (ret < 0) {
   err("bind: %s: %d (%s)",
       ai_buf, errno, strerror(errno));
   close(sock);
   continue;
  }

  ret = listen(sock, SOMAXCONN);
  if (ret < 0) {
   err("listen: %s: %d (%s)",
       ai_buf, errno, strerror(errno));
   close(sock);
   continue;
  }

  info("listening on %s", ai_buf);
  sockfdlist[nsockfd++] = sock;
 }

 return nsockfd;
}
