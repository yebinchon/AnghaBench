
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int MAP_ANONYMOUS ;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int MREMAP_FIXED ;
 int MREMAP_MAYMOVE ;
 int PROT_NONE ;
 int errno ;
 int fflush (int ) ;
 void* mmap (int ,unsigned long,int ,int,int,int ) ;
 void* mremap (void*,unsigned long,unsigned long,int,void*) ;
 int munmap (void*,unsigned long) ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static int try_to_remap(void *vdso_addr, unsigned long size)
{
 void *dest_addr, *new_addr;


 dest_addr = mmap(0, size, PROT_NONE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
 if (dest_addr == MAP_FAILED) {
  printf("[WARN]\tmmap failed (%d): %m\n", errno);
  return 0;
 }

 printf("[NOTE]\tMoving vDSO: [%p, %#lx] -> [%p, %#lx]\n",
  vdso_addr, (unsigned long)vdso_addr + size,
  dest_addr, (unsigned long)dest_addr + size);
 fflush(stdout);

 new_addr = mremap(vdso_addr, size, size,
   MREMAP_FIXED|MREMAP_MAYMOVE, dest_addr);
 if ((unsigned long)new_addr == (unsigned long)-1) {
  munmap(dest_addr, size);
  if (errno == EINVAL) {
   printf("[NOTE]\tvDSO partial move failed, will try with bigger size\n");
   return -1;
  }
  printf("[FAIL]\tmremap failed (%d): %m\n", errno);
  return 1;
 }

 return 0;

}
