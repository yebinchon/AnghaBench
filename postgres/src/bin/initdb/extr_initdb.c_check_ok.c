
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 scalar_t__ caught_signal ;
 int exit (int) ;
 int fflush (int ) ;
 int output_errno ;
 scalar_t__ output_failed ;
 int printf (char*,...) ;
 int stdout ;
 char* strerror (int ) ;

__attribute__((used)) static void
check_ok(void)
{
 if (caught_signal)
 {
  printf(_("caught signal\n"));
  fflush(stdout);
  exit(1);
 }
 else if (output_failed)
 {
  printf(_("could not write to child process: %s\n"),
      strerror(output_errno));
  fflush(stdout);
  exit(1);
 }
 else
 {

  printf(_("ok\n"));
  fflush(stdout);
 }
}
