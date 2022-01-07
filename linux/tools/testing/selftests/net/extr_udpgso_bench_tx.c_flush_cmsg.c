
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock_extended_err {int ee_origin; int ee_type; int ee_code; scalar_t__ ee_data; scalar_t__ ee_info; } ;
struct scm_timestamping {TYPE_1__* ts; } ;
struct cmsghdr {int cmsg_level; int cmsg_type; } ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {int tv_sec; } ;


 scalar_t__ CMSG_DATA (struct cmsghdr*) ;


 int SOF_TIMESTAMPING_TX_HARDWARE ;
 int SO_TIMESTAMPING ;
 int cfg_tx_ts ;
 int cfg_verbose ;
 int error (int,int,char*,int) ;
 int fprintf (int ,char*,int,...) ;
 int stat_tx_ts ;
 int stat_tx_ts_errors ;
 int stat_zcopies ;
 int stderr ;

__attribute__((used)) static void flush_cmsg(struct cmsghdr *cmsg)
{
 struct sock_extended_err *err;
 struct scm_timestamping *tss;
 __u32 lo;
 __u32 hi;
 int i;

 switch (cmsg->cmsg_level) {
 case 133:
  if (cmsg->cmsg_type == SO_TIMESTAMPING) {
   i = (cfg_tx_ts == SOF_TIMESTAMPING_TX_HARDWARE) ? 2 : 0;
   tss = (struct scm_timestamping *)CMSG_DATA(cmsg);
   if (tss->ts[i].tv_sec == 0)
    stat_tx_ts_errors++;
  } else {
   error(1, 0, "unknown SOL_SOCKET cmsg type=%u\n",
         cmsg->cmsg_type);
  }
  break;
 case 135:
 case 134:
  switch (cmsg->cmsg_type) {
  case 136:
  case 137:
  {
   err = (struct sock_extended_err *)CMSG_DATA(cmsg);
   switch (err->ee_origin) {
   case 129:

    stat_tx_ts++;
    break;
   case 132:
   case 131:
    if (cfg_verbose)
     fprintf(stderr,
      "received ICMP error: type=%u, code=%u\n",
      err->ee_type, err->ee_code);
    break;
   case 128:
   {
    lo = err->ee_info;
    hi = err->ee_data;

    stat_zcopies += hi - lo + 1;
    break;
   }
   case 130:
    if (cfg_verbose)
     fprintf(stderr,
      "received packet with local origin: %u\n",
      err->ee_origin);
    break;
   default:
    error(0, 1, "received packet with origin: %u",
          err->ee_origin);
   }
   break;
  }
  default:
   error(0, 1, "unknown IP msg type=%u\n",
         cmsg->cmsg_type);
   break;
  }
  break;
 default:
  error(0, 1, "unknown cmsg level=%u\n",
        cmsg->cmsg_level);
 }
}
