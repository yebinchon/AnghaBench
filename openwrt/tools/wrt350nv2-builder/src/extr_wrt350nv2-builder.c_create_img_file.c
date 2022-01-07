
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int md5_state_t ;
typedef int md5_byte_t ;
typedef int FILE ;


 int DEBUG_LVL2 ;
 int EOF ;
 int SEEK_SET ;
 int errno ;
 int fclose (int *) ;
 int ferror (int *) ;
 int fgetc (int *) ;
 int * fopen (char*,char*) ;
 int fputc (unsigned char,int *) ;
 int fseek (int *,int,int ) ;
 int fw_version ;
 int fwrite (int *,int,int,int *) ;
 unsigned char* img_eof ;
 unsigned char* img_hdr ;
 int lprintf (int ,char*) ;
 int md5_append (int *,int const*,int) ;
 int md5_finish (int *,int *) ;
 int md5_init (int *) ;
 int memcpy (unsigned char*,int ,int) ;
 int memset (unsigned char*,int ,int) ;
 int printf (char*,char*,...) ;
 char* strerror (int) ;

int create_img_file(FILE *f_out, char *out_filename, char *zip_filename) {
 int exitcode = 0;

 md5_state_t state;
 md5_byte_t digest[16];

 int i;
 int size;

 FILE *f_in;
 unsigned char buffer[1];


 memcpy(&img_hdr[50], fw_version, 2);


 memset(&img_hdr[480], 0, 16);


 md5_init(&state);


 lprintf(DEBUG_LVL2, " adding img header\n");
 for (i = 0; i < 512; i++) {
  size = fputc(img_hdr[i], f_out);
  if (size == EOF) {
   exitcode = ferror(f_out);
   printf("output file %s: %s\n", out_filename, strerror(exitcode));
   break;
  }
  md5_append(&state, (const md5_byte_t *)&img_hdr[i], 1);
 }


 if (!exitcode) {
  lprintf(DEBUG_LVL2, " adding zip file\n");
  f_in = fopen(zip_filename, "rb");
  if (!f_in) {
   exitcode = errno;
   printf("input file %s: %s\n", zip_filename, strerror(exitcode));
  } else {
   while ((size = fgetc(f_in)) != EOF) {
    buffer[0] = size;

    size = fputc(buffer[0], f_out);
    if (size == EOF) {
     exitcode = ferror(f_out);
     printf("output file %s: %s\n", out_filename, strerror(exitcode));
     break;
    }
    md5_append(&state, (const md5_byte_t *)buffer, 1);
   }
   if (ferror(f_in)) {
    exitcode = ferror(f_in);
    printf("input file %s: %s\n", zip_filename, strerror(exitcode));
   }
  }

 }


 if (!exitcode) {
  lprintf(DEBUG_LVL2, " adding img eof byte\n");
  size = fputc(img_eof[0], f_out);
  if (size == EOF) {
   exitcode = ferror(f_out);
   printf("output file %s: %s\n", out_filename, strerror(exitcode));
  }
  md5_append(&state, (const md5_byte_t *)img_eof, 1);
 }


 md5_append(&state, (const md5_byte_t *)"A^gU*<>?RFY@#DR&Z", 17);


 md5_finish(&state, digest);


 if (!exitcode) {
  lprintf(DEBUG_LVL2, " writing md5 checksum into img header of file\n");

  size = fseek(f_out, 480, SEEK_SET);
  if (size == -1) {
   exitcode = errno;
   printf("output file %s: %s\n", out_filename, strerror(exitcode));
  } else {
   size = fwrite(digest, 16, 1, f_out);
   if (size < 1) {
    if (ferror(f_out)) {
     exitcode = ferror(f_out);
     printf("output file %s: %s\n", out_filename, strerror(exitcode));
    } else {
     exitcode = 1;
     printf("output file %s: unspecified write error\n", out_filename);
    }
   }
  }

  fclose(f_in);
 }

 return exitcode;
}
