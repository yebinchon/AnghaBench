
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int off; } ;
typedef int RIODesc ;
typedef TYPE_1__ RIO ;


 int RIOPROCPID_FD (int *) ;
 int debug_os_read_at (int ,int *,int,int ) ;
 int memset (int *,int,int) ;

__attribute__((used)) static int __read(RIO *io, RIODesc *fd, ut8 *buf, int len) {
 memset (buf, 0xff, len);
 return debug_os_read_at (RIOPROCPID_FD (fd), buf, len, io->off);
}
