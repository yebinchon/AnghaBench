
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_extended_err {scalar_t__ ee_errno; scalar_t__ ee_origin; int ee_data; int ee_info; } ;
struct scm_timestamping {int dummy; } ;
struct msghdr {int dummy; } ;
struct in_pktinfo {int ipi_addr; int ipi_spec_dst; int ipi_ifindex; } ;
struct in6_pktinfo {int ipi6_addr; int ipi6_ifindex; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; scalar_t__ cmsg_len; } ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 scalar_t__ ENOMSG ;
 scalar_t__ IPV6_PKTINFO ;
 scalar_t__ IPV6_RECVERR ;
 scalar_t__ IP_PKTINFO ;
 scalar_t__ IP_RECVERR ;
 scalar_t__ PACKET_TX_TIMESTAMP ;
 scalar_t__ SCM_TIMESTAMPING ;
 scalar_t__ SOL_IP ;
 scalar_t__ SOL_IPV6 ;
 scalar_t__ SOL_PACKET ;
 scalar_t__ SOL_SOCKET ;
 scalar_t__ SO_EE_ORIGIN_TIMESTAMPING ;
 int fprintf (int ,char*,int,...) ;
 int print_pktinfo (int ,int ,int *,int *) ;
 int print_timestamp (struct scm_timestamping*,int ,int ,int) ;
 int stderr ;

__attribute__((used)) static void __recv_errmsg_cmsg(struct msghdr *msg, int payload_len)
{
 struct sock_extended_err *serr = ((void*)0);
 struct scm_timestamping *tss = ((void*)0);
 struct cmsghdr *cm;
 int batch = 0;

 for (cm = CMSG_FIRSTHDR(msg);
      cm && cm->cmsg_len;
      cm = CMSG_NXTHDR(msg, cm)) {
  if (cm->cmsg_level == SOL_SOCKET &&
      cm->cmsg_type == SCM_TIMESTAMPING) {
   tss = (void *) CMSG_DATA(cm);
  } else if ((cm->cmsg_level == SOL_IP &&
       cm->cmsg_type == IP_RECVERR) ||
      (cm->cmsg_level == SOL_IPV6 &&
       cm->cmsg_type == IPV6_RECVERR) ||
      (cm->cmsg_level == SOL_PACKET &&
       cm->cmsg_type == PACKET_TX_TIMESTAMP)) {
   serr = (void *) CMSG_DATA(cm);
   if (serr->ee_errno != ENOMSG ||
       serr->ee_origin != SO_EE_ORIGIN_TIMESTAMPING) {
    fprintf(stderr, "unknown ip error %d %d\n",
      serr->ee_errno,
      serr->ee_origin);
    serr = ((void*)0);
   }
  } else if (cm->cmsg_level == SOL_IP &&
      cm->cmsg_type == IP_PKTINFO) {
   struct in_pktinfo *info = (void *) CMSG_DATA(cm);
   print_pktinfo(AF_INET, info->ipi_ifindex,
          &info->ipi_spec_dst, &info->ipi_addr);
  } else if (cm->cmsg_level == SOL_IPV6 &&
      cm->cmsg_type == IPV6_PKTINFO) {
   struct in6_pktinfo *info6 = (void *) CMSG_DATA(cm);
   print_pktinfo(AF_INET6, info6->ipi6_ifindex,
          ((void*)0), &info6->ipi6_addr);
  } else
   fprintf(stderr, "unknown cmsg %d,%d\n",
     cm->cmsg_level, cm->cmsg_type);

  if (serr && tss) {
   print_timestamp(tss, serr->ee_info, serr->ee_data,
     payload_len);
   serr = ((void*)0);
   tss = ((void*)0);
   batch++;
  }
 }

 if (batch > 1)
  fprintf(stderr, "batched %d timestamps\n", batch);
}
