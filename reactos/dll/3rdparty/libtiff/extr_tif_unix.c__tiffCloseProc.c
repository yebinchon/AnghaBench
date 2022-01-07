
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thandle_t ;
struct TYPE_2__ {int fd; int h; } ;
typedef TYPE_1__ fd_as_handle_union_t ;


 int close (int ) ;

__attribute__((used)) static int
_tiffCloseProc(thandle_t fd)
{
 fd_as_handle_union_t fdh;
 fdh.h = fd;
 return(close(fdh.fd));
}
