
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int op_mode_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;



 int getopt (int,char**,char*) ;
 char* optarg ;
 int process_image (char*,char*,int) ;
 int usage (char*,int ) ;

int
main(int argc, char **argv)
{
 int opt;
 char *filename, *progname;
 op_mode_t opmode = 129;

 progname = argv[0];

 while ((opt = getopt(argc, argv,":s:f:h?")) != -1) {
  switch (opt) {
  case 's':
   opmode = 128;
   filename = optarg;
   break;
  case 'f':
   opmode = 130;
   filename = optarg;
   break;
  case 'h':
   opmode = 129;
  default:
   usage(progname, EXIT_FAILURE);
   opmode = 129;
  }
 }

 if(filename == ((void*)0))
  opmode = 129;

 switch (opmode) {
 case 129:
  usage(progname, EXIT_FAILURE);
  break;
 case 130:
 case 128:
  return process_image(progname, filename, opmode);
  break;
 }

 return EXIT_SUCCESS;
}
