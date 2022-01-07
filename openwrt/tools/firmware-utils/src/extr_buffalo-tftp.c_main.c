
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int basename (char*) ;
 int check_params () ;
 int crypt_file () ;
 int do_decrypt ;
 int getopt (int,char**,char*) ;
 void* ifname ;
 void* ofname ;
 void* optarg ;
 int progname ;
 int usage (int) ;

int main(int argc, char *argv[])
{
 int res = EXIT_FAILURE;
 int err;

 progname = basename(argv[0]);

 while ( 1 ) {
  int c;

  c = getopt(argc, argv, "di:o:h");
  if (c == -1)
   break;

  switch (c) {
  case 'd':
   do_decrypt = 1;
   break;
  case 'i':
   ifname = optarg;
   break;
  case 'o':
   ofname = optarg;
   break;
  case 'h':
   usage(EXIT_SUCCESS);
   break;
  default:
   usage(EXIT_FAILURE);
   break;
  }
 }

 err = check_params();
 if (err)
  goto out;

 err = crypt_file();
 if (err)
  goto out;

 res = EXIT_SUCCESS;

out:
 return res;
}
