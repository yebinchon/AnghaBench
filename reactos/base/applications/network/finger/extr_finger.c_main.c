
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int getopt (int,char**,char*) ;
 int lflag ;
 int mflag ;
 int now ;
 scalar_t__ optind ;
 int pplan ;
 int sflag ;
 int stderr ;
 int time (int *) ;
 int usage () ;
 int userlist (int,char**) ;

int
main(int argc, char **argv)
{
 int ch;

 while ((ch = getopt(argc, argv, "lmps")) != EOF)
  switch(ch) {
  case 'l':
   lflag = 1;
   break;
  case 'm':
   mflag = 1;
   break;
  case 'p':
   pplan = 1;
   break;
  case 's':
   sflag = 1;
   break;
  case '?':
  default:
   (void)fprintf(stderr,
       "usage: finger [-lmps] login [...]\n");
   exit(1);
  }
 argc -= optind;
 argv += optind;

 (void)time(&now);
 if (!*argv) {
  usage();
 } else {
  userlist(argc, argv);





  if (!sflag)
   lflag = 1;
 }
 return 0;
}
