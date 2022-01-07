
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
 int procpid_write_at (int ,int const*,int,int ) ;

__attribute__((used)) static int __write(RIO *io, RIODesc *fd, const ut8 *buf, int len) {
 return procpid_write_at (RIOPROCPID_FD (fd), buf, len, io->off);
}
