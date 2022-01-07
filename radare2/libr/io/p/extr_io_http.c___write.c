
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_8__ {scalar_t__ off; } ;
struct TYPE_7__ {int data; } ;
typedef TYPE_1__ RIODesc ;
typedef TYPE_2__ RIO ;


 scalar_t__ RIOHTTP_BUF (TYPE_1__*) ;
 scalar_t__ RIOHTTP_SZ (TYPE_1__*) ;
 int memcpy (scalar_t__,int const*,int) ;

__attribute__((used)) static int __write(RIO *io, RIODesc *fd, const ut8 *buf, int count) {
 if (!fd || !fd->data) {
  return -1;
 }
 if (io->off + count > RIOHTTP_SZ (fd)) {
  return -1;
 }
 memcpy (RIOHTTP_BUF (fd)+io->off, buf, count);
 return count;
}
