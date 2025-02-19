
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int,char*) ;
 unsigned long* MAP_FAILED ;
 int MAP_POPULATE ;
 int MAP_PRIVATE ;
 int MMAP_SZ ;
 int PROT_READ ;
 int PROT_WRITE ;
 unsigned long* mmap (int ,int ,int,int,int,int ) ;
 int read (int,int*,int) ;
 int write (int,int*,int) ;

__attribute__((used)) static int child_f(int sock, unsigned long *smap, int fd)
{
 int ret, buf = 0;

 smap = mmap(0, MMAP_SZ, PROT_READ | PROT_WRITE,
   MAP_PRIVATE | MAP_POPULATE, fd, 0);
 BUG_ON(smap == MAP_FAILED, "mmap()");

 BUG_ON(*smap != 0xdeadbabe, "MAP_PRIVATE | MAP_POPULATE changed file");

 ret = write(sock, &buf, sizeof(int));
 BUG_ON(ret <= 0, "write(sock)");

 ret = read(sock, &buf, sizeof(int));
 BUG_ON(ret <= 0, "read(sock)");

 BUG_ON(*smap == 0x22222BAD, "MAP_POPULATE didn't COW private page");
 BUG_ON(*smap != 0xdeadbabe, "mapping was corrupted");

 return 0;
}
