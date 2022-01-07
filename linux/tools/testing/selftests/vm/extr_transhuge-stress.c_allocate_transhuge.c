
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;
typedef int ent ;


 int HPAGE_SHIFT ;
 int HPAGE_SIZE ;
 int MADV_HUGEPAGE ;
 int MAP_ANONYMOUS ;
 int MAP_FIXED ;
 int MAP_NORESERVE ;
 int MAP_PRIVATE ;
 int PAGEMAP_PFN (int ) ;
 scalar_t__ PAGEMAP_PRESENT (int ) ;
 int PAGE_SHIFT ;
 int PROT_READ ;
 int PROT_WRITE ;
 int err (int,char*) ;
 int errx (int,char*) ;
 scalar_t__ madvise (void*,int ,int ) ;
 void* mmap (void*,int ,int,int,int,int ) ;
 int pagemap_fd ;
 int pread (int ,int *,int,uintptr_t) ;

int64_t allocate_transhuge(void *ptr)
{
 uint64_t ent[2];


 if (mmap(ptr, HPAGE_SIZE, PROT_READ | PROT_WRITE,
    MAP_FIXED | MAP_ANONYMOUS |
    MAP_NORESERVE | MAP_PRIVATE, -1, 0) != ptr)
  errx(2, "mmap transhuge");

 if (madvise(ptr, HPAGE_SIZE, MADV_HUGEPAGE))
  err(2, "MADV_HUGEPAGE");


 *(volatile void **)ptr = ptr;

 if (pread(pagemap_fd, ent, sizeof(ent),
   (uintptr_t)ptr >> (PAGE_SHIFT - 3)) != sizeof(ent))
  err(2, "read pagemap");

 if (PAGEMAP_PRESENT(ent[0]) && PAGEMAP_PRESENT(ent[1]) &&
     PAGEMAP_PFN(ent[0]) + 1 == PAGEMAP_PFN(ent[1]) &&
     !(PAGEMAP_PFN(ent[0]) & ((1 << (HPAGE_SHIFT - PAGE_SHIFT)) - 1)))
  return PAGEMAP_PFN(ent[0]);

 return -1;
}
