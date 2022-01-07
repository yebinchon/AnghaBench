
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int outmode ;
typedef int buf ;
typedef int FILE ;


 int BUFLEN ;
 int assert (int) ;
 int error (char*) ;
 int exit (int) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int file_compress (char*,char*) ;
 int file_uncompress (char*) ;
 int * fopen (char*,char*) ;
 scalar_t__ fread (char*,int,int,int *) ;
 size_t fwrite (int const*,int,unsigned int,int *) ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int memset (char*,int ,int) ;
 int perror (char*) ;
 int snprintf (char*,int,char*,char*) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t dataLen) {
  char *inFileName = "/tmp/minigzip_fuzzer.out";
  char *outFileName = "/tmp/minigzip_fuzzer.out.gz";
  char outmode[20];
  FILE *in;
  char buf[BUFLEN];
  uint32_t offset = 0;


  static size_t kMaxSize = 1024 * 1024;
  if (dataLen < 1 || dataLen > kMaxSize)
    return 0;

  in = fopen(inFileName, "w");
  if (fwrite(data, 1, (unsigned)dataLen, in) != dataLen)
    error("failed fwrite");
  if (fclose(in))
    error("failed fclose");

  memset(outmode, 0, sizeof(outmode));
  snprintf(outmode, sizeof(outmode), "%s", "wb");


  outmode[2] = data[0] % 10;

  switch (data[0] % 4) {
  default:
  case 0:
    outmode[3] = 0;
    break;
  case 1:

    outmode[3] = 'f';
    break;
  case 2:

    outmode[3] = 'h';
    break;
  case 3:

    outmode[3] = 'R';
    break;
  }

  file_compress(inFileName, outmode);
  file_uncompress(outFileName);


  in = fopen(inFileName, "rb");
  if (in == ((void*)0)) {
    perror(inFileName);
    exit(1);
  }

  memset(buf, 0, sizeof(buf));
  for (;;) {
    int len = (int)fread(buf, 1, sizeof(buf), in);
    if (ferror(in)) {
      perror("fread");
      exit(1);
    }
    if (len == 0)
      break;
    assert(0 == memcmp(data + offset, buf, len));
    offset += len;
  }

  if (fclose(in))
    error("failed fclose");


  return 0;
}
