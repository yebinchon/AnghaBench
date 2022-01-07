
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


 int debug_gdb_write_at (int const*,int,int ) ;
 TYPE_2__* desc ;

__attribute__((used)) static int __write(RIO *io, RIODesc *fd, const ut8 *buf, int count) {
 ut64 addr = io->off;
 if (!desc || !desc->data) {
  return -1;
 }
 return debug_gdb_write_at (buf, count, addr);
}
