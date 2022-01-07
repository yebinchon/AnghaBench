
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testcase {char* msg; int size; int keep_mapped; scalar_t__ low_addr_required; int flags; int addr; } ;


 scalar_t__ ADDR_SWITCH_HINT ;
 void* MAP_FAILED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int memset (void*,int ,int ) ;
 void* mmap (int ,int ,int,int ,int,int ) ;
 int munmap (void*,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static int run_test(struct testcase *test, int count)
{
 void *p;
 int i, ret = 0;

 for (i = 0; i < count; i++) {
  struct testcase *t = test + i;

  p = mmap(t->addr, t->size, PROT_READ | PROT_WRITE, t->flags, -1, 0);

  printf("%s: %p - ", t->msg, p);

  if (p == MAP_FAILED) {
   printf("FAILED\n");
   ret = 1;
   continue;
  }

  if (t->low_addr_required && p >= (void *)(ADDR_SWITCH_HINT)) {
   printf("FAILED\n");
   ret = 1;
  } else {




   memset(p, 0, t->size);
   printf("OK\n");
  }
  if (!t->keep_mapped)
   munmap(p, t->size);
 }

 return ret;
}
