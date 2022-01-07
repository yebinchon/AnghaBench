
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 unsigned long do_u64_read (int ,char*,int *,unsigned long,unsigned long) ;
 int pagemap_fd ;

__attribute__((used)) static unsigned long pagemap_read(uint64_t *buf,
      unsigned long index,
      unsigned long pages)
{
 return do_u64_read(pagemap_fd, "/proc/pid/pagemap", buf, index, pages);
}
