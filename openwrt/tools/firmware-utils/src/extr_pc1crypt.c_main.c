
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {unsigned int st_size; } ;
struct pc1_ctx {int dummy; } ;
typedef int FILE ;


 unsigned int BUFSIZE ;
 int ERR (char*) ;
 int ERRS (char*,int *) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int basename (char*) ;
 int decrypt ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int fflush (int *) ;
 int * fopen (int *,char*) ;
 int fread (char*,unsigned int,int,int *) ;
 int free (char*) ;
 int fwrite (char*,unsigned int,int,int *) ;
 int getopt (int,char**,char*) ;
 int * ifname ;
 char* malloc (unsigned int) ;
 int * ofname ;
 int * optarg ;
 int pc1_decrypt_buf (struct pc1_ctx*,char*,unsigned int) ;
 int pc1_encrypt_buf (struct pc1_ctx*,char*,unsigned int) ;
 int pc1_finish (struct pc1_ctx*) ;
 int pc1_init (struct pc1_ctx*) ;
 int progname ;
 int stat (int *,struct stat*) ;
 int unlink (int *) ;
 int usage (int) ;

int main(int argc, char *argv[])
{
 struct pc1_ctx pc1;
 int res = EXIT_FAILURE;
 int err;
 struct stat st;
 char *buf;
 unsigned total;

 FILE *outfile, *infile;

 progname = basename(argv[0]);

 while ( 1 ) {
  int c;

  c = getopt(argc, argv, "di:o:h");
  if (c == -1)
   break;

  switch (c) {
  case 'd':
   decrypt = 1;
   break;
  case 'i':
   ifname = optarg;
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

 if (ifname == ((void*)0)) {
  ERR("no input file specified");
  goto err;
 }

 if (ofname == ((void*)0)) {
  ERR("no output file specified");
  goto err;
 }

 err = stat(ifname, &st);
 if (err){
  ERRS("stat failed on %s", ifname);
  goto err;
 }

 total = st.st_size;
 buf = malloc(BUFSIZE);
 if (!buf) {
  ERR("no memory for buffer\n");
  goto err;
 }

 infile = fopen(ifname, "r");
 if (infile == ((void*)0)) {
  ERRS("could not open \"%s\" for reading", ifname);
  goto err_free;
 }

 outfile = fopen(ofname, "w");
 if (outfile == ((void*)0)) {
  ERRS("could not open \"%s\" for writing", ofname);
  goto err_close_in;
 }

 pc1_init(&pc1);
 while (total > 0) {
  unsigned datalen;

  if (total > BUFSIZE)
   datalen = BUFSIZE;
  else
   datalen = total;

  errno = 0;
  fread(buf, datalen, 1, infile);
  if (errno != 0) {
   ERRS("unable to read from file %s", ifname);
   goto err_close_out;
  }

  if (decrypt)
   pc1_decrypt_buf(&pc1, buf, datalen);
  else
   pc1_encrypt_buf(&pc1, buf, datalen);

  errno = 0;
  fwrite(buf, datalen, 1, outfile);
  if (errno) {
   ERRS("unable to write to file %s", ofname);
   goto err_close_out;
  }

  total -= datalen;
 }
 pc1_finish(&pc1);

 res = EXIT_SUCCESS;

 out_flush:
 fflush(outfile);

 err_close_out:
 fclose(outfile);
 if (res != EXIT_SUCCESS) {
  unlink(ofname);
 }

 err_close_in:
 fclose(infile);

 err_free:
 free(buf);

 err:
 return res;
}
