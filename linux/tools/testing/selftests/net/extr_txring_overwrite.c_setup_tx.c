
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpacket_req {int tp_block_size; int tp_block_nr; int tp_frame_nr; void* tp_frame_size; } ;
struct sockaddr_ll {int sll_ifindex; int sll_protocol; int sll_family; } ;
typedef int req ;
typedef int laddr ;


 int AF_PACKET ;
 char* MAP_FAILED ;
 int MAP_SHARED ;
 int PACKET_TX_RING ;
 int PF_PACKET ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SOCK_RAW ;
 int SOL_PACKET ;
 scalar_t__ bind (int,void*,int) ;
 int errno ;
 int error (int,int ,char*) ;
 void* getpagesize () ;
 int htons (int ) ;
 int if_nametoindex (char*) ;
 char* mmap (int ,int,int,int ,int,int ) ;
 scalar_t__ setsockopt (int,int ,int ,void*,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int setup_tx(char **ring)
{
 struct sockaddr_ll laddr = {};
 struct tpacket_req req = {};
 int fdt;

 fdt = socket(PF_PACKET, SOCK_RAW, 0);
 if (fdt == -1)
  error(1, errno, "socket t");

 laddr.sll_family = AF_PACKET;
 laddr.sll_protocol = htons(0);
 laddr.sll_ifindex = if_nametoindex("lo");
 if (!laddr.sll_ifindex)
  error(1, errno, "if_nametoindex");

 if (bind(fdt, (void *)&laddr, sizeof(laddr)))
  error(1, errno, "bind fdt");

 req.tp_block_size = getpagesize();
 req.tp_block_nr = 1;
 req.tp_frame_size = getpagesize();
 req.tp_frame_nr = 1;

 if (setsockopt(fdt, SOL_PACKET, PACKET_TX_RING,
         (void *)&req, sizeof(req)))
  error(1, errno, "setsockopt ring");

 *ring = mmap(0, req.tp_block_size * req.tp_block_nr,
       PROT_READ | PROT_WRITE, MAP_SHARED, fdt, 0);
 if (*ring == MAP_FAILED)
  error(1, errno, "mmap");

 return fdt;
}
