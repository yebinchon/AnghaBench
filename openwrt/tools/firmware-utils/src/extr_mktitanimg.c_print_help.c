
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int help_page ;


 int printf (char*,char*) ;

void print_help(void)
{
 static char* help_page[]=
 {
  "mknspimg version 1.0, Texas Instruments, 2004",
  "Syntax:",
  "        mknspimg -o outfile -i image1 image2 -a align1 align2 [-v] [-b] [-p prod_id] [-r rel_id] [-s rel_name] [-f flags]",
  "Example:",
  "        mknspimg -o nsp_image.bin -i kernel.bin files.img -a 0 4096",
  "This generates 'nsp_image.bin' from two input files aligning first to 0 and second to 4096 bytes."
 };

 int num_lines = sizeof(help_page)/sizeof(char*);
 int i;
 for(i=0; i < num_lines; i++) {
  printf("%s\n", help_page[i]);
 }
}
