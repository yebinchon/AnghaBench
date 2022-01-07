
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SOCK_STREAM ;
 int cfg_payload_len ;
 scalar_t__ cfg_proto ;
 int fprintf (int ,char*,int,int) ;
 int saved_tskey ;
 int saved_tskey_type ;
 int stderr ;
 int test_failed ;

__attribute__((used)) static void validate_key(int tskey, int tstype)
{
 int stepsize;




 if (saved_tskey == -1)
  saved_tskey_type = tstype;
 else if (saved_tskey_type != tstype)
  return;

 stepsize = cfg_proto == SOCK_STREAM ? cfg_payload_len : 1;
 if (tskey != saved_tskey + stepsize) {
  fprintf(stderr, "ERROR: key %d, expected %d\n",
    tskey, saved_tskey + stepsize);
  test_failed = 1;
 }

 saved_tskey = tskey;
}
