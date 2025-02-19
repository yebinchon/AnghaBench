
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uimage_header {int ih_dcrc; } ;
struct jcg_header {int dummy; } ;


 void* MAP_FAILED ;
 int MAP_SHARED ;
 size_t MAXSIZE ;
 int MODE_KR ;
 int MODE_UIMAGE ;
 int MODE_UNKNOWN ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int assert (int) ;
 int close (int) ;
 int craftcrc (int ,void*,size_t) ;
 int err (int,char*,char*,...) ;
 int errx (int,char*,...) ;
 int ftruncate (int,size_t) ;
 int getopt (int,char**,char*) ;
 int mkjcgheader (void*,size_t,char*) ;
 int mkuheader (struct uimage_header*,size_t,size_t) ;
 void* mmap (int *,size_t,int,int ,int,int ) ;
 int munmap (void*,size_t) ;
 int ntohl (int ) ;
 int open (char*,int,int) ;
 int opensize (char*,size_t*) ;
 char* optarg ;
 int optind ;
 size_t read (int,void*,size_t) ;
 int set_source_date_epoch () ;
 size_t strtoimax (char*,char**,int) ;
 int usage () ;

int
main(int argc, char **argv)
{
 struct jcg_header *jh;
 struct uimage_header *uh;
 int c;
 char *imagefile = ((void*)0);
 char *file1 = ((void*)0);
 char *file2 = ((void*)0);
 char *version = ((void*)0);
 size_t maxsize = MAXSIZE;
 char *endptr;
 int mode = MODE_UNKNOWN;
 int fdo, fd1, fd2;
 size_t size1, size2, sizeu, sizeo, off1, off2;
 void *map;


 assert(sizeof(struct jcg_header) == 512);
 assert(sizeof(struct uimage_header) == 64);
 set_source_date_epoch();

 while ((c = getopt(argc, argv, "o:k:f:u:v:m:h")) != -1) {
  switch (c) {
  case 'o':
   imagefile = optarg;
   break;
  case 'k':
   if (mode == MODE_UIMAGE)
    errx(1,"-k cannot be combined with -u");

   mode = MODE_KR;
   file1 = optarg;
   break;
  case 'f':
   if (mode == MODE_UIMAGE)
    errx(1,"-f cannot be combined with -u");

   mode = MODE_KR;
   file2 = optarg;
   break;
  case 'u':
   if (mode == MODE_KR)
    errx(1,"-u cannot be combined with -k and -r");

   mode = MODE_UIMAGE;
   file1 = optarg;
   break;
  case 'm':
   if (optarg != ((void*)0))
    maxsize = strtoimax(optarg, &endptr, 10);

   break;
  case 'v':
   version = optarg;
   break;
  case 'h':
  default:
   usage();
  }
 }
 if (optind != argc)
  errx(1, "illegal arg \"%s\"", argv[optind]);

 if (imagefile == ((void*)0))
  errx(1, "no output file specified");

 if (mode == MODE_UNKNOWN)
  errx(1, "specify either -u or -k and -r");

 if (mode == MODE_KR) {
  if (file1 == ((void*)0) || file2 == ((void*)0))
   errx(1, "need -k and -r");

  fd2 = opensize(file2, &size2);
 }
 fd1 = opensize(file1, &size1);
 if (mode == MODE_UIMAGE) {
  off1 = sizeof(*jh);
  sizeu = size1 + 4;
  sizeo = sizeof(*jh) + sizeu;
 } else {
  off1 = sizeof(*jh) + sizeof(*uh);
  off2 = sizeof(*jh) + sizeof(*uh) + size1;
  sizeu = sizeof(*uh) + size1 + size2;
  sizeo = sizeof(*jh) + sizeu;
 }

 if (sizeo > maxsize)
  errx(1, "payload too large: %zd > %zd\n", sizeo, maxsize);


 fdo = open(imagefile, O_RDWR | O_CREAT | O_TRUNC, 00644);
 if (fdo < 0)
  err(1, "cannot open \"%s\"", imagefile);


 if (ftruncate(fdo, sizeo) == -1)
  err(1, "cannot grow \"%s\" to %zd bytes", imagefile, sizeo);

 map = mmap(((void*)0), sizeo, PROT_READ|PROT_WRITE, MAP_SHARED, fdo, 0);
 uh = map + sizeof(*jh);
 if (map == MAP_FAILED)
  err(1, "cannot mmap \"%s\"", imagefile);


 if (read(fd1, map + off1, size1) != size1)
  err(1, "cannot copy %s", file1);


 if (mode == MODE_KR) {
  if (read(fd2, map+off2, size2) != size2)
   err(1, "cannot copy %s", file2);

  mkuheader(uh, size1, size2);
 } else if (mode == MODE_UIMAGE)
  craftcrc(ntohl(uh->ih_dcrc), (void*)uh + sizeof(*uh),
    sizeu - sizeof(*uh));

 mkjcgheader(map, sizeu, version);
 munmap(map, sizeo);
 close(fdo);
 return 0;
}
