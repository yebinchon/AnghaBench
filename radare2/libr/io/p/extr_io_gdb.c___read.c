
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_5__ {int data; } ;
struct TYPE_4__ {int off; } ;
typedef int RIODesc ;
typedef TYPE_1__ RIO ;


 int debug_gdb_read_at (int *,int,int ) ;
 TYPE_2__* desc ;
 int memset (int *,int,int) ;

__attribute__((used)) static int __read(RIO *io, RIODesc *fd, ut8 *buf, int count) {
 if (!io || !fd || !buf || count < 1) {
  return -1;
 }
 memset (buf, 0xff, count);
 ut64 addr = io->off;
 if (!desc || !desc->data) {
  return -1;
 }
 return debug_gdb_read_at (buf, count, addr);
}
