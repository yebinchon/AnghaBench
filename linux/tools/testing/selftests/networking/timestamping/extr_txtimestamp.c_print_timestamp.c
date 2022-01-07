
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_timestamping {int * ts; } ;





 int __print_timestamp (char const*,int *,int,int) ;
 int cfg_delay_ack ;
 int cfg_delay_snd ;
 int error (int,int ,char*,int) ;
 int validate_key (int,int) ;
 int validate_timestamp (int *,int ) ;

__attribute__((used)) static void print_timestamp(struct scm_timestamping *tss, int tstype,
       int tskey, int payload_len)
{
 const char *tsname;

 validate_key(tskey, tstype);

 switch (tstype) {
 case 129:
  tsname = "  ENQ";
  validate_timestamp(&tss->ts[0], 0);
  break;
 case 128:
  tsname = "  SND";
  validate_timestamp(&tss->ts[0], cfg_delay_snd);
  break;
 case 130:
  tsname = "  ACK";
  validate_timestamp(&tss->ts[0], cfg_delay_ack);
  break;
 default:
  error(1, 0, "unknown timestamp type: %u",
  tstype);
 }
 __print_timestamp(tsname, &tss->ts[0], tskey, payload_len);
}
