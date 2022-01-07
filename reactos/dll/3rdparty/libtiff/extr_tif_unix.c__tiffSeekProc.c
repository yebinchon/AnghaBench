
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int thandle_t ;
struct TYPE_2__ {int fd; int h; } ;
typedef TYPE_1__ fd_as_handle_union_t ;
typedef scalar_t__ _TIFF_off_t ;


 int EINVAL ;
 scalar_t__ _TIFF_lseek_f (int ,scalar_t__,int) ;
 int errno ;

__attribute__((used)) static uint64
_tiffSeekProc(thandle_t fd, uint64 off, int whence)
{
 fd_as_handle_union_t fdh;
 _TIFF_off_t off_io = (_TIFF_off_t) off;
 if ((uint64) off_io != off)
 {
  errno=EINVAL;
  return (uint64) -1;
 }
 fdh.h = fd;
 return((uint64)_TIFF_lseek_f(fdh.fd,off_io,whence));
}
