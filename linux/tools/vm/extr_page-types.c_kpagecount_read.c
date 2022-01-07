
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int PROC_KPAGECOUNT ;
 unsigned long do_u64_read (scalar_t__,int ,int *,unsigned long,unsigned long) ;
 scalar_t__ kpagecount_fd ;

__attribute__((used)) static unsigned long kpagecount_read(uint64_t *buf,
         unsigned long index,
         unsigned long pages)
{
 return kpagecount_fd < 0 ? pages :
  do_u64_read(kpagecount_fd, PROC_KPAGECOUNT,
       buf, index, pages);
}
