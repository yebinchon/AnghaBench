
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_info {int dummy; } ;


 int build_image (char const*,char const*,char const*,unsigned int,int,int,struct device_info*) ;
 int convert_firmware (char const*,char const*) ;
 int error (int,int ,char*,...) ;
 int extract_firmware (char const*,char const*) ;
 struct device_info* find_board (char const*) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int set_source_date_epoch () ;
 int sscanf (char*,char*,unsigned int*) ;
 int usage (char*) ;

int main(int argc, char *argv[]) {
 const char *board = ((void*)0), *kernel_image = ((void*)0), *rootfs_image = ((void*)0), *output = ((void*)0);
 const char *extract_image = ((void*)0), *output_directory = ((void*)0), *convert_image = ((void*)0);
 bool add_jffs2_eof = 0, sysupgrade = 0;
 unsigned rev = 0;
 struct device_info *info;
 set_source_date_epoch();

 while (1) {
  int c;

  c = getopt(argc, argv, "B:k:r:o:V:jSh:x:d:z:");
  if (c == -1)
   break;

  switch (c) {
  case 'B':
   board = optarg;
   break;

  case 'k':
   kernel_image = optarg;
   break;

  case 'r':
   rootfs_image = optarg;
   break;

  case 'o':
   output = optarg;
   break;

  case 'V':
   sscanf(optarg, "r%u", &rev);
   break;

  case 'j':
   add_jffs2_eof = 1;
   break;

  case 'S':
   sysupgrade = 1;
   break;

  case 'h':
   usage(argv[0]);
   return 0;

  case 'd':
   output_directory = optarg;
   break;

  case 'x':
   extract_image = optarg;
   break;

  case 'z':
   convert_image = optarg;
   break;

  default:
   usage(argv[0]);
   return 1;
  }
 }

 if (extract_image || output_directory) {
  if (!extract_image)
   error(1, 0, "No factory/oem image given via -x <file>. Output directory is only valid with -x");
  if (!output_directory)
   error(1, 0, "Can not extract an image without output directory. Use -d <dir>");
  extract_firmware(extract_image, output_directory);
 } else if (convert_image) {
  if (!output)
   error(1, 0, "Can not convert a factory/oem image into sysupgrade image without output file. Use -o <file>");
  convert_firmware(convert_image, output);
 } else {
  if (!board)
   error(1, 0, "no board has been specified");
  if (!kernel_image)
   error(1, 0, "no kernel image has been specified");
  if (!rootfs_image)
   error(1, 0, "no rootfs image has been specified");
  if (!output)
   error(1, 0, "no output filename has been specified");

  info = find_board(board);

  if (info == ((void*)0))
   error(1, 0, "unsupported board %s", board);

  build_image(output, kernel_image, rootfs_image, rev, add_jffs2_eof, sysupgrade, info);
 }

 return 0;
}
