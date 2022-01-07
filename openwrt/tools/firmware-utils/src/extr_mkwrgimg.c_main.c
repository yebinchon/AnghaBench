
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wrg_header {int offset; int size; int magic2; int magic1; int devname; int signature; } ;
struct stat {int st_size; } ;
typedef int FILE ;


 int ERR (char*) ;
 int ERRS (char*,int *) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int WRG_MAGIC ;
 int basename (char*) ;
 int big_endian ;
 int * dev_name ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int fflush (int *) ;
 int * fopen (int *,char*) ;
 int fread (char*,int,int,int *) ;
 int free (char*) ;
 int fwrite (char*,int,int,int *) ;
 int get_digest (struct wrg_header*,char*,int) ;
 int getopt (int,char**,char*) ;
 int * ifname ;
 char* malloc (int) ;
 int memset (struct wrg_header*,char,int) ;
 int offset ;
 int * ofname ;
 void* optarg ;
 int progname ;
 int put_u32 (int *,int) ;
 int * signature ;
 int stat (int *,struct stat*) ;
 int strncpy (int ,int *,int) ;
 int strtoul (void*,int *,int ) ;
 int unlink (int *) ;
 int usage (int) ;

int main(int argc, char *argv[])
{
 struct wrg_header *header;
 char *buf;
 struct stat st;
 int buflen;
 int err;
 int res = EXIT_FAILURE;

 FILE *outfile, *infile;

 progname = basename(argv[0]);

 while ( 1 ) {
  int c;

  c = getopt(argc, argv, "bd:i:o:s:O:h");
  if (c == -1)
   break;

  switch (c) {
  case 'b':
   big_endian = 1;
   break;
  case 'd':
   dev_name = optarg;
   break;
  case 'i':
   ifname = optarg;
   break;
  case 'o':
   ofname = optarg;
   break;
  case 's':
   signature = optarg;
   break;
  case 'O':
   offset = strtoul(optarg, ((void*)0), 0);
   break;
  case 'h':
   usage(EXIT_SUCCESS);
   break;

  default:
   usage(EXIT_FAILURE);
   break;
  }
 }

 if (signature == ((void*)0)) {
  ERR("no signature specified");
  goto err;
 }

 if (ifname == ((void*)0)) {
  ERR("no input file specified");
  goto err;
 }

 if (ofname == ((void*)0)) {
  ERR("no output file specified");
  goto err;
 }

 if (dev_name == ((void*)0)) {
  ERR("no device name specified");
  goto err;
 }

 err = stat(ifname, &st);
 if (err){
  ERRS("stat failed on %s", ifname);
  goto err;
 }

 buflen = st.st_size + sizeof(struct wrg_header);
 buf = malloc(buflen);
 if (!buf) {
  ERR("no memory for buffer\n");
  goto err;
 }

 infile = fopen(ifname, "r");
 if (infile == ((void*)0)) {
  ERRS("could not open \"%s\" for reading", ifname);
  goto err_free;
 }

 errno = 0;
 fread(buf + sizeof(struct wrg_header), st.st_size, 1, infile);
 if (errno != 0) {
  ERRS("unable to read from file %s", ifname);
  goto close_in;
 }

 header = (struct wrg_header *) buf;
 memset(header, '\0', sizeof(struct wrg_header));

 strncpy(header->signature, signature, sizeof(header->signature));
 strncpy(header->devname, dev_name, sizeof(header->signature));
 put_u32(&header->magic1, WRG_MAGIC);
 put_u32(&header->magic2, WRG_MAGIC);
 put_u32(&header->size, st.st_size);
 put_u32(&header->offset, offset);

 get_digest(header, buf + sizeof(struct wrg_header), st.st_size);

 outfile = fopen(ofname, "w");
 if (outfile == ((void*)0)) {
  ERRS("could not open \"%s\" for writing", ofname);
  goto close_in;
 }

 errno = 0;
 fwrite(buf, buflen, 1, outfile);
 if (errno) {
  ERRS("unable to write to file %s", ofname);
  goto close_out;
 }

 fflush(outfile);

 res = EXIT_SUCCESS;

close_out:
 fclose(outfile);
 if (res != EXIT_SUCCESS)
  unlink(ofname);
close_in:
 fclose(infile);
err_free:
 free(buf);
err:
 return res;
}
