
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long cfg_payload_len ;
 scalar_t__ cfg_tcp ;
 scalar_t__ cfg_tx_tstamp ;
 scalar_t__ cfg_zerocopy ;
 int error (int,int ,char*,unsigned long,unsigned long) ;
 int fprintf (int ,char*,...) ;
 unsigned long stat_tx_ts ;
 long stat_tx_ts_errors ;
 unsigned long stat_zcopies ;
 int stderr ;
 unsigned long tend ;
 unsigned long tstart ;

__attribute__((used)) static void print_audit_report(unsigned long num_msgs, unsigned long num_sends)
{
 unsigned long tdelta;

 tdelta = tend - tstart;
 if (!tdelta)
  return;

 fprintf(stderr, "Summary over %lu.%03lu seconds...\n",
   tdelta / 1000, tdelta % 1000);
 fprintf(stderr,
  "sum %s tx: %6lu MB/s %10lu calls (%lu/s) %10lu msgs (%lu/s)\n",
  cfg_tcp ? "tcp" : "udp",
  ((num_msgs * cfg_payload_len) >> 10) / tdelta,
  num_sends, num_sends * 1000 / tdelta,
  num_msgs, num_msgs * 1000 / tdelta);

 if (cfg_tx_tstamp) {
  if (stat_tx_ts_errors)
   error(1, 0,
         "Expected clean TX Timestamps: %9lu msgs received %6lu errors",
         stat_tx_ts, stat_tx_ts_errors);
  if (stat_tx_ts != num_sends)
   error(1, 0,
         "Unexpected number of TX Timestamps: %9lu expected %9lu received",
         num_sends, stat_tx_ts);
  fprintf(stderr,
   "Tx Timestamps: %19lu received %17lu errors\n",
   stat_tx_ts, stat_tx_ts_errors);
 }

 if (cfg_zerocopy) {
  if (stat_zcopies != num_sends)
   error(1, 0, "Unexpected number of Zerocopy completions: %9lu expected %9lu received",
         num_sends, stat_zcopies);
  fprintf(stderr,
   "Zerocopy acks: %19lu\n",
   stat_zcopies);
 }
}
