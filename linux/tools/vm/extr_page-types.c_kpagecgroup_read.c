
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 unsigned long do_u64_read (scalar_t__,int ,int *,unsigned long,unsigned long) ;
 scalar_t__ kpagecgroup_fd ;
 int opt_kpageflags ;

__attribute__((used)) static unsigned long kpagecgroup_read(uint64_t *buf,
          unsigned long index,
          unsigned long pages)
{
 if (kpagecgroup_fd < 0)
  return pages;

 return do_u64_read(kpagecgroup_fd, opt_kpageflags, buf, index, pages);
}
