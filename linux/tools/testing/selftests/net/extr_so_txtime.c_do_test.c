
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; } ;
typedef int socklen_t ;


 scalar_t__ CLOCK_TAI ;
 scalar_t__ PF_INET ;
 scalar_t__ cfg_clockid ;
 int * cfg_in ;
 int cfg_num_pkt ;
 int * cfg_out ;
 scalar_t__ close (int) ;
 int do_recv_one (int,int *) ;
 int do_recv_verify_empty (int) ;
 int do_send_one (int,int *) ;
 int errno ;
 int error (int,int ,char*) ;
 int fprintf (int ,char*,char,char*) ;
 int gettime_ns () ;
 int glob_tstart ;
 int setup_rx (struct sockaddr*,int ) ;
 int setup_tx (struct sockaddr*,int ) ;
 int stderr ;

__attribute__((used)) static void do_test(struct sockaddr *addr, socklen_t alen)
{
 int fdt, fdr, i;

 fprintf(stderr, "\nSO_TXTIME ipv%c clock %s\n",
   addr->sa_family == PF_INET ? '4' : '6',
   cfg_clockid == CLOCK_TAI ? "tai" : "monotonic");

 fdt = setup_tx(addr, alen);
 fdr = setup_rx(addr, alen);

 glob_tstart = gettime_ns();

 for (i = 0; i < cfg_num_pkt; i++)
  do_send_one(fdt, &cfg_in[i]);
 for (i = 0; i < cfg_num_pkt; i++)
  do_recv_one(fdr, &cfg_out[i]);

 do_recv_verify_empty(fdr);

 if (close(fdr))
  error(1, errno, "close r");
 if (close(fdt))
  error(1, errno, "close t");
}
