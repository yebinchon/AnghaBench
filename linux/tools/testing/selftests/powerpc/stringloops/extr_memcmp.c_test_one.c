
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int memcmp (char*,char*,unsigned long) ;
 int printf (char*,...) ;
 int test_memcmp (char*,char*,unsigned long) ;
 scalar_t__ vmx_count ;

__attribute__((used)) static void test_one(char *s1, char *s2, unsigned long max_offset,
  unsigned long size_start, unsigned long max_size)
{
 unsigned long offset, size;

 for (offset = 0; offset < max_offset; offset++) {
  for (size = size_start; size < (max_size - offset); size++) {
   int x, y;
   unsigned long i;

   y = memcmp(s1+offset, s2+offset, size);
   x = test_memcmp(s1+offset, s2+offset, size);

   if (((x ^ y) < 0) &&
    ((x | y) != 0)) {
    printf("memcmp returned %d, should have returned %d (offset %ld size %ld)\n", x, y, offset, size);

    for (i = offset; i < offset+size; i++)
     printf("%02x ", s1[i]);
    printf("\n");

    for (i = offset; i < offset+size; i++)
     printf("%02x ", s2[i]);
    printf("\n");
    abort();
   }

   if (vmx_count != 0) {
    printf("vmx enter/exit not paired.(offset:%ld size:%ld s1:%p s2:%p vc:%d\n",
     offset, size, s1, s2, vmx_count);
    printf("\n");
    abort();
   }
  }
 }
}
