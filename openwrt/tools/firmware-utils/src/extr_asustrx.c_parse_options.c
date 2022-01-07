
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 int getopt (int,char**,char*) ;
 char* in_path ;
 char* optarg ;
 char* out_path ;
 char* productid ;
 int sscanf (char*,char*,int *,int *,int *,int *) ;
 int stderr ;
 int * version ;

__attribute__((used)) static void parse_options(int argc, char **argv) {
 int c;

 while ((c = getopt(argc, argv, "i:o:p:v:")) != -1) {
  switch (c) {
  case 'i':
   in_path = optarg;
   break;
  case 'o':
   out_path = optarg;
   break;
  case 'p':
   productid = optarg;
   break;
  case 'v':
   if (sscanf(optarg, "%hu.%hu.%hu.%hu", &version[0], &version[1], &version[2], &version[3]) != 4)
    fprintf(stderr, "Version %s doesn't match suppored 4-digits format\n", optarg);
   break;
  }
 }
}
