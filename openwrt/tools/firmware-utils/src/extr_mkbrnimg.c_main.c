
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int appendfile (int,char*,int) ;
 int close (int) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int open (char*,int,int) ;
 char* output_file ;
 int parseopts (int*,char***) ;
 int signature ;
 int stderr ;
 char* strerror (int ) ;
 scalar_t__ strlen (int ) ;
 int usage (char*) ;
 int write (int,int ,scalar_t__) ;

int main(int argc, char **argv)
{
 int outfd;
 int i;

 parseopts(&argc, &argv);

 if (argc < 1)
  usage("wrong number of arguments");

 if ((outfd = open(output_file, O_WRONLY|O_CREAT|O_TRUNC, 0644)) == -1)
 {
  fprintf(stderr, "Error opening '%s' for writing: %s\n", output_file, strerror(errno));
  exit(1);
 }

 for (i=0; i<argc; i++) {
  appendfile(outfd, argv[i], i == 0);
 }
 write(outfd, signature, strlen(signature)+1);
 close(outfd);

 return 0;
}
