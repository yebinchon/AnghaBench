
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_6__ {int off; } ;
struct TYPE_5__ {int data; } ;
typedef TYPE_1__ RIODesc ;
typedef TYPE_2__ RIO ;


 scalar_t__ windbg_get_target (int ) ;
 int windbg_va_to_pa (int ,int ,int *) ;
 int windbg_write_at (int ,int const*,int ,int) ;
 int windbg_write_at_phys (int ,int const*,int ,int) ;

__attribute__((used)) static int __write(RIO *io, RIODesc *fd, const ut8 *buf, int count) {
 if (!fd) {
  return -1;
 }
 if (windbg_get_target (fd->data)) {
  ut64 va;
  if (!windbg_va_to_pa (fd->data, io->off, &va)) {
   return -1;
  }
  return windbg_write_at_phys (fd->data, buf, va, count);
 }
 return windbg_write_at (fd->data, buf, io->off, count);
}
