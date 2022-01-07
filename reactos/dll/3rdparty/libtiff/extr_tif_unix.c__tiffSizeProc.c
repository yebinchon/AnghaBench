
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
typedef int thandle_t ;
struct TYPE_4__ {int fd; int h; } ;
typedef TYPE_1__ fd_as_handle_union_t ;
struct TYPE_5__ {scalar_t__ st_size; } ;
typedef TYPE_2__ _TIFF_stat_s ;


 scalar_t__ _TIFF_fstat_f (int ,TYPE_2__*) ;

__attribute__((used)) static uint64
_tiffSizeProc(thandle_t fd)
{
 _TIFF_stat_s sb;
 fd_as_handle_union_t fdh;
 fdh.h = fd;
 if (_TIFF_fstat_f(fdh.fd,&sb)<0)
  return(0);
 else
  return((uint64)sb.st_size);
}
