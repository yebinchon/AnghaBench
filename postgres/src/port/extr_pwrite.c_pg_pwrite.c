
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
typedef int off_t ;
struct TYPE_3__ {int Offset; int member_0; } ;
typedef TYPE_1__ OVERLAPPED ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int EBADF ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int SEEK_SET ;
 int WriteFile (scalar_t__,void const*,size_t,int*,TYPE_1__*) ;
 int _dosmaperr (int ) ;
 scalar_t__ _get_osfhandle (int) ;
 int errno ;
 scalar_t__ lseek (int,int ,int ) ;
 int write (int,void const*,size_t) ;

ssize_t
pg_pwrite(int fd, const void *buf, size_t size, off_t offset)
{
 if (lseek(fd, offset, SEEK_SET) < 0)
  return -1;

 return write(fd, buf, size);

}
