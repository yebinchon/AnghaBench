
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BUFLEN ;
 unsigned long MAX_LEN ;
 unsigned long MAX_OFFSET ;
 int POISON ;
 int do_one (char*,char*,unsigned long,unsigned long,unsigned long,char*,char*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 char* malloc (unsigned long) ;
 char* memalign (unsigned long,unsigned long) ;
 int memset (char*,int ,unsigned long) ;
 int stderr ;

int test_copy_loop(void)
{
 char *src, *dst, *redzone, *fill;
 unsigned long len, src_off, dst_off;
 unsigned long i;

 src = memalign(BUFLEN, BUFLEN);
 dst = memalign(BUFLEN, BUFLEN);
 redzone = malloc(BUFLEN);
 fill = malloc(BUFLEN);

 if (!src || !dst || !redzone || !fill) {
  fprintf(stderr, "malloc failed\n");
  exit(1);
 }

 memset(redzone, POISON, BUFLEN);


 for (i = 0; i < BUFLEN; i++)
  fill[i] = i & 0xff;

 for (len = 1; len < MAX_LEN; len++) {
  for (src_off = 0; src_off < MAX_OFFSET; src_off++) {
   for (dst_off = 0; dst_off < MAX_OFFSET; dst_off++) {
    do_one(src, dst, src_off, dst_off, len,
           redzone, fill);
   }
  }
 }

 return 0;
}
