
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_IMAGE ;
 int MAX_META ;
 int getopt (int,char**,char*) ;
 void* o_dump ;
 void* o_extract ;
 void** o_images ;
 int o_isize ;
 void** o_meta ;
 int o_msize ;
 void* o_seal ;
 int o_verbose ;
 void* optarg ;
 int printf (char*) ;
 int show_usage (int) ;

__attribute__((used)) static int parse_args(int argc, char * argv[])
{
 int opt;

 while ((opt = getopt(argc, argv, "hvd:s:i:m:x:")) > 0)
 {
  switch (opt)
  {
  default: show_usage(-1); break;
  case 'h': show_usage(0); break;
  case 'v': o_verbose++; break;
  case 'd': o_dump = optarg; break;
  case 's': o_seal = optarg; break;
  case 'x': o_extract = optarg; break;
  case 'i':
   if (o_isize < MAX_IMAGE) o_images[o_isize++] = optarg;
   else printf("Exceed the maximum acceptable image files.!\n");
   break;
  case 'm':
   if (o_msize < MAX_META) o_meta[o_msize++] = optarg;
   else printf("Exceed the maximum acceptable META data.!\n");
   break;
  }
 }
 return 0;
}
