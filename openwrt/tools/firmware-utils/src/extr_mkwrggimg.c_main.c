
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wrgg03_header {int devname; int offset; int size; int buildno; int reserve; int flag; int model; int version; int magic2; int magic1; int signature; } ;
struct stat {int st_size; } ;
typedef int FILE ;


 int ERR (char*) ;
 int ERRS (char*,int *) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int WRGG03_MAGIC ;
 int basename (char*) ;
 int big_endian ;
 int * buildno ;
 int * devname ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int fflush (int *) ;
 int flag ;
 int * fopen (int *,char*) ;
 int fread (char*,int,int,int *) ;
 int free (char*) ;
 int fwrite (char*,int,int,int *) ;
 int get_digest (struct wrgg03_header*,char*,int) ;
 int getopt (int,char**,char*) ;
 int * ifname ;
 char* malloc (int) ;
 int memset (struct wrgg03_header*,char,int) ;
 int * model ;
 int offset ;
 int * ofname ;
 void* optarg ;
 int progname ;
 int put_u32 (int *,int,int) ;
 int reserve ;
 int * signature ;
 int stat (int *,struct stat*) ;
 int strncpy (int ,int *,int) ;
 int strtoul (void*,int *,int ) ;
 int unlink (int *) ;
 int usage (int) ;
 int * version ;

int main(int argc, char *argv[])
{
 struct wrgg03_header *header;
 char *buf;
 struct stat st;
 int buflen;
 int err;
 int res = EXIT_FAILURE;

 FILE *outfile, *infile;

 progname = basename(argv[0]);

 while ( 1 ) {
  int c;

  c = getopt(argc, argv, "bd:i:m:o:s:v:B:O:h");
  if (c == -1)
   break;

  switch (c) {
  case 'b':
   big_endian = 1;
   break;
  case 'B':
   buildno = optarg;
   break;
  case 'd':
   devname = optarg;
   break;
  case 'i':
   ifname = optarg;
   break;
  case 'm':
   model = optarg;
   break;
  case 'o':
   ofname = optarg;
   break;
  case 's':
   signature = optarg;
   break;
  case 'v':
   version = optarg;
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

 if (devname == ((void*)0)) {
  ERR("no device name specified");
  goto err;
 }

 if (model == ((void*)0)) {
  ERR("no model name specified");
  goto err;
 }

 if (buildno == ((void*)0)) {
  ERR("no build number specified");
  goto err;
 }

 if (version == ((void*)0)) {
  ERR("no version specified");
  goto err;
 }

 err = stat(ifname, &st);
 if (err){
  ERRS("stat failed on %s", ifname);
  goto err;
 }

 buflen = st.st_size + sizeof(struct wrgg03_header);
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
 fread(buf + sizeof(struct wrgg03_header), st.st_size, 1, infile);
 if (errno != 0) {
  ERRS("unable to read from file %s", ifname);
  goto close_in;
 }

 header = (struct wrgg03_header *) buf;
 memset(header, '\0', sizeof(struct wrgg03_header));

 strncpy(header->signature, signature, sizeof(header->signature));
 put_u32(&header->magic1, WRGG03_MAGIC, 0);
 put_u32(&header->magic2, WRGG03_MAGIC, 0);
 strncpy(header->version, version, sizeof(header->version));
 strncpy(header->model, model, sizeof(header->model));
 put_u32(&header->flag, flag, 0);
 put_u32(&header->reserve, reserve, 0);
 strncpy(header->buildno, buildno, sizeof(header->buildno));
 put_u32(&header->size, st.st_size, big_endian);
 put_u32(&header->offset, offset, big_endian);
 strncpy(header->devname, devname, sizeof(header->devname));

 get_digest(header, buf + sizeof(struct wrgg03_header), st.st_size);

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
