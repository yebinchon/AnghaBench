
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ debug ;
 int dumpdata (char*,char*,int,char*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int printf (char*,int,int) ;

int test_memcmp(void *s1, void *s2, int n, int offset, char *test_name)
{
 char *s1c, *s2c;

 s1c = s1;
 s1c += offset;
 s2c = s2;
 s2c += offset;

 if (memcmp(s1c, s2c, n)) {
  if (debug) {
   printf("\n  Compare failed. Offset:%i length:%i\n",
          offset, n);
   dumpdata(s1c, s2c, n, test_name);
  }
  return 1;
 }
 return 0;
}
