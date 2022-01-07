
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROT_NONE ;
 scalar_t__ mem_region ;
 scalar_t__ mprotect (scalar_t__,scalar_t__,int ) ;
 scalar_t__ page_size ;
 int perror (char*) ;

__attribute__((used)) static int protect_region(void)
{
 if (mprotect(mem_region + page_size, page_size, PROT_NONE)) {
  perror("mprotect");
  return 1;
 }

 return 0;
}
