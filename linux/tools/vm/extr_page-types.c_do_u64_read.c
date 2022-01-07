
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int off_t ;


 int EXIT_FAILURE ;
 int ULONG_MAX ;
 int exit (int ) ;
 int fatal (char*,long) ;
 int perror (char const*) ;
 long pread (int,int *,unsigned long,int) ;

__attribute__((used)) static unsigned long do_u64_read(int fd, const char *name,
     uint64_t *buf,
     unsigned long index,
     unsigned long count)
{
 long bytes;

 if (index > ULONG_MAX / 8)
  fatal("index overflow: %lu\n", index);

 bytes = pread(fd, buf, count * 8, (off_t)index * 8);
 if (bytes < 0) {
  perror(name);
  exit(EXIT_FAILURE);
 }
 if (bytes % 8)
  fatal("partial read: %lu bytes\n", bytes);

 return bytes / 8;
}
