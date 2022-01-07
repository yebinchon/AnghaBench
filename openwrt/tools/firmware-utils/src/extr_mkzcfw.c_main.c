
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* file_name; } ;
struct TYPE_3__ {void* file_name; } ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int basename (char*) ;
 void* board_id ;
 int build_fw () ;
 int check_options () ;
 int getopt (int,char**,char*) ;
 TYPE_2__ kernel_info ;
 void* ofname ;
 void* optarg ;
 int progname ;
 TYPE_1__ rootfs_info ;
 int usage (int) ;

int main(int argc, char *argv[])
{
 int ret = EXIT_FAILURE;
 int err;

 FILE *outfile;

 progname = basename(argv[0]);

 while ( 1 ) {
  int c;

  c = getopt(argc, argv, "B:k:r:o:h");
  if (c == -1)
   break;

  switch (c) {
  case 'B':
   board_id = optarg;
   break;
  case 'k':
   kernel_info.file_name = optarg;
   break;
  case 'r':
   rootfs_info.file_name = optarg;
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

 ret = check_options();
 if (ret)
  goto out;

 ret = build_fw();

 out:
 return ret;
}
