
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stat {int st_size; } ;


 int HEADER_SIZE ;
 int IH_MAGIC ;
 int MODEL_LEN ;
 int NAME_LEN ;
 size_t OFFSET_ARCH ;
 size_t OFFSET_COMP ;
 int OFFSET_DCRC ;
 int OFFSET_EP ;
 int OFFSET_HCRC ;
 int OFFSET_LOAD ;
 size_t OFFSET_MAC ;
 int OFFSET_MAGIC ;
 int OFFSET_MODEL ;
 int OFFSET_NAME ;
 size_t OFFSET_OS ;
 int OFFSET_SIZE ;
 int OFFSET_TIME ;
 size_t OFFSET_TYPE ;
 int OFFSET_VERSION ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 int S_IRGRP ;
 int S_IRWXU ;
 int VERSION_LEN ;
 int be_wr (unsigned char*,int) ;
 int close (int) ;
 int crc32 (int ,unsigned char*,int) ;
 int free (unsigned char*) ;
 unsigned char* malloc (size_t) ;
 int memset (unsigned char*,int,size_t) ;
 int open (char const*,int,...) ;
 int printf (char*,...) ;
 size_t read (int,unsigned char*,int) ;
 int stat (char const*,struct stat*) ;
 int strncpy (unsigned char*,char*,int) ;
 size_t write (int,unsigned char*,size_t) ;

int main(int argc, char **argv)
{
 int fdin;
 int fdout;
 struct stat sb;
 uint32_t filesize;
 uint32_t padding;
 int ret = 0;
 const char *pathin;
 const char *pathout;
 unsigned char *buffer;
 unsigned char *infop;
 uint32_t sum;
 size_t bufsize;
 size_t bytes;
 int i;

 if (argc < 3) {
  printf("Too few arguments.\n");
  printf("%s <infile> <outfile>\n", argv[0]);
 }

 pathin = argv[1];
 pathout = argv[2];

 ret = stat(pathin, &sb);
 if (ret < 0)
  return ret;

 filesize = sb.st_size;
 padding = filesize % 4;
 printf("INFILE: %s, size: %08x bytes\n", pathin, filesize);

 bufsize = filesize + HEADER_SIZE;

 printf("Allocate %08x bytes\n", bufsize);
 buffer = malloc(bufsize);
 if (!buffer) {
  printf("OOM: could not allocate buffer\n");
  return 0;
 }

 memset(buffer, 0x00, bufsize);


 fdin = open(pathin, O_RDONLY);
 if (!fdin) {
  printf("ERROR: could not open input file\n");
  return 0;
 }
 bytes = read(fdin, buffer + HEADER_SIZE, filesize);
 if (bytes < filesize) {
  printf("ERROR: could not read entire file\n");
  return 0;
 }
 close(fdin);


 infop = buffer;

 be_wr(buffer + OFFSET_MAGIC, IH_MAGIC);


 be_wr(buffer + OFFSET_TIME, 0x4c06738c);
 be_wr(buffer + OFFSET_SIZE, filesize);


 be_wr(buffer + OFFSET_LOAD, 0x00008000);
 be_wr(buffer + OFFSET_EP, 0x00008000);

 buffer[OFFSET_OS] = 0x05;
 buffer[OFFSET_ARCH] = 0x02;
 buffer[OFFSET_TYPE] = 0x02;
 buffer[OFFSET_COMP] = 0x01;


 strncpy(buffer + OFFSET_NAME, "kernel.img", NAME_LEN);
 buffer[OFFSET_NAME + NAME_LEN - 1] = '\0';
 strncpy(buffer + OFFSET_MODEL, "dns-313v3", MODEL_LEN);
 buffer[OFFSET_MODEL + MODEL_LEN - 1] = '\0';
 strncpy(buffer + OFFSET_VERSION, "2.01b04", VERSION_LEN);
 buffer[OFFSET_VERSION + VERSION_LEN - 1] = '\0';

 buffer[OFFSET_MAC] = 0x00;
 buffer[OFFSET_MAC + 1] = 0x80;
 buffer[OFFSET_MAC + 2] = 0xc8;
 buffer[OFFSET_MAC + 3] = 0x16;
 buffer[OFFSET_MAC + 4] = 0x81;
 buffer[OFFSET_MAC + 5] = 0x68;


 sum = crc32(0, buffer + HEADER_SIZE, filesize);
 be_wr(buffer + OFFSET_DCRC, sum);
 printf("data checksum: 0x%08x\n", sum);


 sum = crc32(0, buffer, HEADER_SIZE);
 be_wr(buffer + OFFSET_HCRC, sum);
 printf("header checksum: 0x%08x\n", sum);

 printf("OUTFILE: %s, size: %08x bytes\n", pathout, bufsize);
 fdout = open(pathout, O_RDWR|O_CREAT|O_TRUNC,S_IRWXU|S_IRGRP);
 if (!fdout) {
  printf("ERROR: could not open output file\n");
  return 0;
 }
 bytes = write(fdout, buffer, bufsize);
 if (bytes < bufsize) {
  printf("ERROR: could not write complete output file\n");
  return 0;
 }
 close(fdout);

 free(buffer);

 return 0;
}
