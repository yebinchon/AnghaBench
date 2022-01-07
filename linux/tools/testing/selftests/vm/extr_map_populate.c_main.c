
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BUG_ON (int,char*) ;
 unsigned long* MAP_FAILED ;
 int MAP_SHARED ;
 int MMAP_SZ ;
 int MS_SYNC ;
 int PF_LOCAL ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SOCK_SEQPACKET ;
 int child_f (int,unsigned long*,int ) ;
 int close (int) ;
 int fileno (int *) ;
 int fork () ;
 int ftruncate (int ,int ) ;
 unsigned long* mmap (int ,int ,int,int ,int ,int ) ;
 int msync (unsigned long*,int ,int ) ;
 int parent_f (int,unsigned long*,int) ;
 int socketpair (int ,int ,int ,int*) ;
 int * tmpfile () ;

int main(int argc, char **argv)
{
 int sock[2], child, ret;
 FILE *ftmp;
 unsigned long *smap;

 ftmp = tmpfile();
 BUG_ON(ftmp == 0, "tmpfile()");

 ret = ftruncate(fileno(ftmp), MMAP_SZ);
 BUG_ON(ret, "ftruncate()");

 smap = mmap(0, MMAP_SZ, PROT_READ | PROT_WRITE,
   MAP_SHARED, fileno(ftmp), 0);
 BUG_ON(smap == MAP_FAILED, "mmap()");

 *smap = 0xdeadbabe;

 ret = msync(smap, MMAP_SZ, MS_SYNC);
 BUG_ON(ret, "msync()");

 ret = socketpair(PF_LOCAL, SOCK_SEQPACKET, 0, sock);
 BUG_ON(ret, "socketpair()");

 child = fork();
 BUG_ON(child == -1, "fork()");

 if (child) {
  ret = close(sock[0]);
  BUG_ON(ret, "close()");

  return parent_f(sock[1], smap, child);
 }

 ret = close(sock[1]);
 BUG_ON(ret, "close()");

 return child_f(sock[0], smap, fileno(ftmp));
}
