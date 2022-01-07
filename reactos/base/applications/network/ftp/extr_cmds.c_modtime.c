
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COMPLETE ;
 int code ;
 scalar_t__ command (char*,char const*) ;
 scalar_t__ debug ;
 int fflush (int ) ;
 int gets (int *) ;
 int * line ;
 int makeargv () ;
 int margc ;
 char** margv ;
 int printf (char*,...) ;
 char* reply_string ;
 int sscanf (char*,char*,int*,int*,int*,int*,int*,int*) ;
 int stdout ;
 int strcat (int *,char*) ;
 size_t strlen (int *) ;
 int verbose ;

void modtime(int argc, const char *argv[])
{
 int overbose;

 if (argc < 2) {
  (void) strcat(line, " ");
  printf("(filename) ");
  (void) fflush(stdout);
  (void) gets(&line[strlen(line)]);
  makeargv();
  argc = margc;
  argv = margv;
 }
 if (argc < 2) {
  printf("usage:%s filename\n", argv[0]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 overbose = verbose;
 if (debug == 0)
  verbose = -1;
 if (command("MDTM %s", argv[1]) == COMPLETE) {
  int yy, mo, day, hour, min, sec;
  sscanf(reply_string, "%*s %04d%02d%02d%02d%02d%02d", &yy, &mo,
   &day, &hour, &min, &sec);

  printf("%s\t%02d/%02d/%04d %02d:%02d:%02d GMT\n", argv[1],
   mo, day, yy, hour, min, sec);
 } else
  printf("%s\n", reply_string);
 verbose = overbose;
 (void) fflush(stdout);
}
