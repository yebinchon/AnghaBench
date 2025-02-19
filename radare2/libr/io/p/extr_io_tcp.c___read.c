
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_8__ {unsigned int off; } ;
struct TYPE_7__ {int data; } ;
typedef TYPE_1__ RIODesc ;
typedef TYPE_2__ RIO ;


 scalar_t__ RIOTCP_BUF (TYPE_1__*) ;
 unsigned int RIOTCP_SZ (TYPE_1__*) ;
 int memcpy (int *,scalar_t__,int) ;

__attribute__((used)) static int __read(RIO *io, RIODesc *fd, ut8 *buf, int count) {
 unsigned int sz;
 if (!fd || !fd->data) {
  return -1;
 }
 sz = RIOTCP_SZ (fd);
 if (io->off >= sz) {
  return -1;
 }
 if (io->off + count >= sz) {
  count = sz - io->off;
 }
 memcpy (buf, RIOTCP_BUF (fd) + io->off, count);
 return count;
}
