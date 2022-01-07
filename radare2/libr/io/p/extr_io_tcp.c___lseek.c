
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_3__ {scalar_t__ off; } ;
typedef int RIODesc ;
typedef TYPE_1__ RIO ;


 scalar_t__ RIOTCP_SZ (int *) ;




__attribute__((used)) static ut64 __lseek(RIO *io, RIODesc *fd, ut64 offset, int whence) {
 switch (whence) {
 case 128: return offset;
 case 130: return io->off + offset;
 case 129: return RIOTCP_SZ (fd);
 }
 return offset;
}
