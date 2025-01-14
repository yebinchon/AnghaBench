
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 void* base1 ;
 void* base2 ;
 int basename (char*) ;
 void* brand ;
 int check_params () ;
 int dhp ;
 void* flag ;
 int getopt (int,char**,char*) ;
 void* hwver ;
 void* language ;
 void* major ;
 void* minor ;
 void* ofname ;
 void* optarg ;
 void* platform ;
 int process_ifname (void*) ;
 int process_region (void*) ;
 void* product ;
 int progname ;
 int skipcrc ;
 void* strtoul (void*,int *,int) ;
 int tag_file () ;
 int usage (int) ;

int main(int argc, char *argv[])
{
 int res = EXIT_FAILURE;
 int err;

 progname = basename(argv[0]);

 while ( 1 ) {
  int c;

  c = getopt(argc, argv, "a:b:c:d:f:hi:l:m:o:p:r:sv:w:I:");
  if (c == -1)
   break;

  switch (c) {
  case 'a':
   platform = optarg;
   break;
  case 'b':
   brand = optarg;
   break;
  case 'c':
   base1 = strtoul(optarg, ((void*)0), 16);
   break;
  case 'd':
   base2 = strtoul(optarg, ((void*)0), 16);
   break;
  case 'f':
   flag = strtoul(optarg, ((void*)0), 2);
   break;
  case 'I':
   dhp = 1;

  case 'i':
   err = process_ifname(optarg);
   if (err)
    goto out;
   break;
  case 'l':
   language = optarg;
   break;
  case 'm':
   minor = optarg;
   break;
  case 'o':
   ofname = optarg;
   break;
  case 'p':
   product = optarg;
   break;
  case 'r':
   err = process_region(optarg);
   if (err)
    goto out;
   break;
  case 's':
   skipcrc = 1;
   break;
  case 'v':
   major = optarg;
   break;
  case 'w':
   hwver = optarg;
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

 err = tag_file();
 if (err)
  goto out;

 res = EXIT_SUCCESS;

out:
 return res;
}
