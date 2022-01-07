
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hex_pattern ;
typedef int buf ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 char* default_pattern ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ fflush (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t fread (char*,int,int,int *) ;
 int fwrite (char*,size_t,int,int *) ;
 int getopt (int,char**,char*) ;
 int is_hex_pattern ;
 void* optarg ;
 int optind ;
 scalar_t__ sscanf (char const*,char*,unsigned int*) ;
 int stderr ;
 int * stdin ;
 int * stdout ;
 int strlen (char const*) ;
 int usage () ;
 int xor_data (char*,size_t,char const*,int,int) ;

int main(int argc, char **argv)
{
 char buf[1024];
 FILE *in = stdin;
 FILE *out = stdout;
 char *ifn = ((void*)0);
 char *ofn = ((void*)0);
 const char *pattern = default_pattern;
 char hex_pattern[128];
 unsigned int hex_buf;
 int c;
 int v0, v1, v2;
 size_t n;
 int p_len, p_off = 0;

 while ((c = getopt(argc, argv, "i:o:p:xh")) != -1) {
  switch (c) {
   case 'i':
    ifn = optarg;
    break;
   case 'o':
    ofn = optarg;
    break;
   case 'p':
    pattern = optarg;
    break;
   case 'x':
    is_hex_pattern = 1;
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

 p_len = strlen(pattern);

 if (p_len == 0) {
  fprintf(stderr, "pattern cannot be empty\n");
  usage();
 }

 if (is_hex_pattern) {
  int i;

  if ((p_len / 2) > sizeof(hex_pattern)) {
   fprintf(stderr, "provided hex pattern is too long\n");
   usage();
  }

  if (p_len % 2 != 0) {
   fprintf(stderr, "the number of characters (hex) is incorrect\n");
   usage();
  }

  for (i = 0; i < (p_len / 2); i++) {
   if (sscanf(pattern + (i * 2), "%2x", &hex_buf) < 0) {
    fprintf(stderr, "invalid hex digit around %d\n", i * 2);
    usage();
   }
   hex_pattern[i] = (char)hex_buf;
  }
 }

 while ((n = fread(buf, 1, sizeof(buf), in)) > 0) {
  if (n < sizeof(buf)) {
   if (ferror(in)) {
   FREAD_ERROR:
    fprintf(stderr, "fread error\n");
    return EXIT_FAILURE;
   }
  }

  if (is_hex_pattern) {
   p_off = xor_data(buf, n, hex_pattern, (p_len / 2),
      p_off);
  } else {
   p_off = xor_data(buf, n, pattern, p_len, p_off);
  }

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
