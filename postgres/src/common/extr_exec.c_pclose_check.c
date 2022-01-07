
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ERRCODE_SYSTEM_ERROR ;
 int _ (char*) ;
 int errcode (int ) ;
 int log_error (int ,char*,...) ;
 int pclose (int *) ;
 int pfree (char*) ;
 char* wait_result_to_str (int) ;

int
pclose_check(FILE *stream)
{
 int exitstatus;
 char *reason;

 exitstatus = pclose(stream);

 if (exitstatus == 0)
  return 0;

 if (exitstatus == -1)
 {

  log_error(errcode(ERRCODE_SYSTEM_ERROR),
      _("pclose failed: %m"));
 }
 else
 {
  reason = wait_result_to_str(exitstatus);
  log_error(errcode(ERRCODE_SYSTEM_ERROR),
      "%s", reason);
  pfree(reason);
 }
 return exitstatus;
}
