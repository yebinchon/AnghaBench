
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ssize_t ;


 int O_CREAT ;
 int O_RDONLY ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 int ecc_offset ;
 int free (int *) ;
 int getopt (int,char**,char*) ;
 int * malloc (void*) ;
 int nand_calculate_ecc (int *,int *) ;
 void* oob_size ;
 int open (char*,int,int) ;
 int optarg ;
 scalar_t__ optind ;
 int page_size ;
 int perror (char*) ;
 int read (int,int *,int) ;
 void* strtoul (int ,int *,int ) ;
 int usage (char*) ;
 int write (int,int *,void*) ;

int main(int argc, char **argv)
{
 uint8_t *page_data = ((void*)0);
 uint8_t *ecc_data;
 int infd = -1, outfd = -1;
 int ret = 1;
 ssize_t bytes;
 int ch;

 while ((ch = getopt(argc, argv, "e:o:p:")) != -1) {
  switch(ch) {
  case 'p':
   page_size = strtoul(optarg, ((void*)0), 0);
   break;
  case 'o':
   oob_size = strtoul(optarg, ((void*)0), 0);
   break;
  case 'e':
   ecc_offset = strtoul(optarg, ((void*)0), 0);
   break;
  default:
   usage(argv[0]);
  }
 }
 argc -= optind;
 if (argc < 2)
  usage(argv[0]);

 argv += optind;

 infd = open(argv[0], O_RDONLY, 0);
 if (infd < 0) {
  perror("open input file");
  goto out;
 }

 outfd = open(argv[1], O_WRONLY|O_CREAT|O_TRUNC, 0644);
 if (outfd < 0) {
  perror("open output file");
  goto out;
 }

 page_data = malloc(page_size + oob_size);

 while ((bytes = read(infd, page_data, page_size)) == page_size) {
  int j;

  ecc_data = page_data + page_size + ecc_offset;
  for (j = 0; j < page_size / 256; j++)
  {
   nand_calculate_ecc(page_data + j * 256, ecc_data);
   ecc_data += 3;
  }
  write(outfd, page_data, page_size + oob_size);
 }

 ret = 0;
out:
 if (infd >= 0)
  close(infd);
 if (outfd >= 0)
  close(outfd);
 if (page_data)
  free(page_data);
 return ret;
}
