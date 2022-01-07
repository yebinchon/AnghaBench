
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 size_t calculate_digest (int *,int ,int *) ;
 int copy_file (int *,int *) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 char** o_images ;
 size_t o_isize ;
 int o_meta ;
 int o_msize ;
 int printf (char*,char*) ;
 int rewind (int *) ;
 int sprintf (char*,char*,char*) ;
 int verbose (char*,char*,size_t) ;
 int write_checksum (int *,int *) ;
 int write_meta_data (int *,int ,int ) ;
 int write_seama_header (int *,int ,int ,size_t) ;

__attribute__((used)) static void pack_files(void)
{
 FILE * fh;
 FILE * ifh;
 size_t i, fsize;
 char filename[512];
 uint8_t digest[16];

 for (i=0; i<o_isize; i++)
 {

  ifh = fopen(o_images[i], "r+");
  if (ifh)
  {
   fsize = calculate_digest(ifh, 0, digest);
   verbose("file size (%s) : %d\n", o_images[i], fsize);
   rewind(ifh);


   sprintf(filename, "%s.seama", o_images[i]);
   fh = fopen(filename, "w+");
   if (fh)
   {
    write_seama_header(fh, o_meta, o_msize, fsize);
    write_checksum(fh, digest);
    write_meta_data(fh, o_meta, o_msize);
    copy_file(fh, ifh);
    fclose(fh);
   }
   fclose(ifh);
  }
  else
  {
   printf("Unable to open image file '%s'\n",o_images[i]);
  }
 }
}
