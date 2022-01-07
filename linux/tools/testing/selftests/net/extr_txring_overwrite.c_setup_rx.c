
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETH_P_IP ;
 int PF_PACKET ;
 int SOCK_RAW ;
 int errno ;
 int error (int,int ,char*) ;
 int htons (int ) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int setup_rx(void)
{
 int fdr;

 fdr = socket(PF_PACKET, SOCK_RAW, htons(ETH_P_IP));
 if (fdr == -1)
  error(1, errno, "socket r");

 return fdr;
}
