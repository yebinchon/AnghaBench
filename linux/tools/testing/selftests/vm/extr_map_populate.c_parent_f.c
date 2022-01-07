
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int,char*) ;
 int MMAP_SZ ;
 int MS_SYNC ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int msync (unsigned long*,int ,int ) ;
 int read (int,int*,int) ;
 int waitpid (int,int*,int ) ;
 int write (int,int*,int) ;

__attribute__((used)) static int parent_f(int sock, unsigned long *smap, int child)
{
 int status, ret;

 ret = read(sock, &status, sizeof(int));
 BUG_ON(ret <= 0, "read(sock)");

 *smap = 0x22222BAD;
 ret = msync(smap, MMAP_SZ, MS_SYNC);
 BUG_ON(ret, "msync()");

 ret = write(sock, &status, sizeof(int));
 BUG_ON(ret <= 0, "write(sock)");

 waitpid(child, &status, 0);
 BUG_ON(!WIFEXITED(status), "child in unexpected state");

 return WEXITSTATUS(status);
}
