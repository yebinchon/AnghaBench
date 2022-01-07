
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 unsigned long do_u64_read (int ,int ,int *,unsigned long,unsigned long) ;
 int kpageflags_fd ;
 int opt_kpageflags ;

__attribute__((used)) static unsigned long kpageflags_read(uint64_t *buf,
         unsigned long index,
         unsigned long pages)
{
 return do_u64_read(kpageflags_fd, opt_kpageflags, buf, index, pages);
}
