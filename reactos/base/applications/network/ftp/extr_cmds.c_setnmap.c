
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAXPATHLEN ;
 char* altarg ;
 int code ;
 int fflush (int ) ;
 int gets (int *) ;
 char* index (char*,char) ;
 int * line ;
 int makeargv () ;
 int mapflag ;
 int mapin ;
 int mapout ;
 int margc ;
 char** margv ;
 int printf (char*,...) ;
 scalar_t__ proxy ;
 int stdout ;
 int strcat (int *,char*) ;
 size_t strlen (int *) ;
 int strncpy (int ,char*,scalar_t__) ;

void setnmap(int argc, const char *argv[])
{
 char *cp;

 if (argc == 1) {
  mapflag = 0;
  printf("Nmap off.\n");
  (void) fflush(stdout);
  code = mapflag;
  return;
 }
 if (argc < 3) {
  (void) strcat(line, " ");
  printf("(mapout) ");
  (void) fflush(stdout);
  (void) gets(&line[strlen(line)]);
  makeargv();
  argc = margc;
  argv = margv;
 }
 if (argc < 3) {
  printf("Usage: %s [mapin mapout]\n",argv[0]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 mapflag = 1;
 code = 1;
 cp = index(altarg, ' ');
 if (proxy) {
  while(*++cp == ' ');
  altarg = cp;
  cp = index(altarg, ' ');
 }
 *cp = '\0';
 (void) strncpy(mapin, altarg, MAXPATHLEN - 1);
 while (*++cp == ' ');
 (void) strncpy(mapout, cp, MAXPATHLEN - 1);
}
