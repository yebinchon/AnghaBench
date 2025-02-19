
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* file_name; } ;
struct TYPE_3__ {void* file_name; } ;


 int ERR (char*,char*,void*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int basename (char*) ;
 int build_fw () ;
 int check_options () ;
 int combined ;
 int getopt (int,char**,char*) ;
 int image_size ;
 TYPE_2__ kernel_info ;
 int kernel_size ;
 void* model ;
 void* ofname ;
 void* optarg ;
 int progname ;
 void* region ;
 TYPE_1__ rootfs_info ;
 void* signature ;
 int str2u32 (void*,int *) ;
 int usage (int) ;
 void* version ;

int main(int argc, char *argv[])
{
 int ret = EXIT_FAILURE;

 progname = basename(argv[0]);

 while (1) {
  int c;

  c = getopt(argc, argv, "M:S:V:R:k:K:I:r:o:hc");
  if (c == -1)
   break;

  switch (c) {
  case 'M':
   model = optarg;
   break;
  case 'S':
   signature = optarg;
   break;
  case 'V':
   version = optarg;
   break;
  case 'R':
   region = optarg;
   break;
  case 'k':
   kernel_info.file_name = optarg;
   break;
  case 'K':
   if (str2u32(optarg, &kernel_size)) {
    ERR("%s is invalid '%s'",
        "kernel size", optarg);
    goto out;
   }
   break;
  case 'I':
   if (str2u32(optarg, &image_size)) {
    ERR("%s is invalid '%s'",
        "image size", optarg);
    goto out;
   }
   break;
  case 'r':
   rootfs_info.file_name = optarg;
   break;
  case 'c':
   combined = 1;
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
