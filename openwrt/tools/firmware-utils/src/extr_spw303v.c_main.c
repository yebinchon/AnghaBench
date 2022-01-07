
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int buf ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int IMAGETAG_CRC_START ;
 int crc32 (int ,char*,size_t) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ fflush (int *) ;
 int fix_header (char*) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t fread (char*,int,int,int *) ;
 int fwrite (char*,size_t,int,int *) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int optind ;
 int stderr ;
 int * stdin ;
 int * stdout ;
 int usage () ;

int main(int argc, char **argv)
{
 char buf[1024];
 FILE *in = stdin;
 FILE *out = stdout;
 char *ifn = ((void*)0);
 char *ofn = ((void*)0);
 int c;
 int v0, v1, v2;
 size_t n;
 int first_block = 1;

 uint32_t image_crc = IMAGETAG_CRC_START;

 while ((c = getopt(argc, argv, "i:o:h")) != -1) {
  switch (c) {
   case 'i':
    ifn = optarg;
    break;
   case 'o':
    ofn = optarg;
    break;
   case 'h':
   default:
    usage();
  }
 }

 if (optind != argc || optind == 1) {
  fprintf(stderr, "illegal arg \"%s\"\n", argv[optind]);
  usage();
 }

 if (ifn && !(in = fopen(ifn, "r"))) {
  fprintf(stderr, "can not open \"%s\" for reading\n", ifn);
  usage();
 }

 if (ofn && !(out = fopen(ofn, "w"))) {
  fprintf(stderr, "can not open \"%s\" for writing\n", ofn);
  usage();
 }



 while ((n = fread(buf, 1, sizeof(buf), in)) > 0) {
  if (n < sizeof(buf)) {
   if (ferror(in)) {
   FREAD_ERROR:
    fprintf(stderr, "fread error\n");
    return EXIT_FAILURE;
   }
  }

  if (first_block && n >= 256) {
   fix_header(buf);
   first_block = 0;
  }

  image_crc = crc32(image_crc, buf, n);

  if (!fwrite(buf, n, 1, out)) {
  FWRITE_ERROR:
   fprintf(stderr, "fwrite error\n");
   return EXIT_FAILURE;
  }
 }

 if (ferror(in)) {
  goto FREAD_ERROR;
 }

 if (fflush(out)) {
  goto FWRITE_ERROR;
 }

 fclose(in);
 fclose(out);

 return EXIT_SUCCESS;
}
