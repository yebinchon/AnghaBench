
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
struct TYPE_9__ {scalar_t__ off; } ;
struct TYPE_8__ {TYPE_1__* data; } ;
struct TYPE_7__ {int flags; int filename; int buf; } ;
typedef TYPE_1__ RIOMMapFileObj ;
typedef TYPE_2__ RIODesc ;
typedef TYPE_3__ RIO ;


 int R_PERM_W ;
 int eprintf (char*) ;
 scalar_t__ r_buf_size (int ) ;
 int r_file_mmap_write (int ,scalar_t__,int const*,int) ;
 int r_file_truncate (int ,scalar_t__) ;
 int r_io_mmap_refresh_buf (TYPE_1__*) ;

__attribute__((used)) static int r_io_mmap_write(RIO *io, RIODesc *fd, const ut8 *buf, int count) {
 RIOMMapFileObj *mmo;
 int len = count;
 ut64 addr;

 if (!io || !fd || !fd->data || !buf) {
  return -1;
 }
 mmo = fd->data;
 addr = io->off;
 if ( !(mmo->flags & R_PERM_W)) {
  return -1;
 }
 if ( (count + addr > r_buf_size (mmo->buf)) || r_buf_size (mmo->buf) == 0) {
  ut64 sz = count + addr;
  r_file_truncate (mmo->filename, sz);
 }
 len = r_file_mmap_write (mmo->filename, io->off, buf, len);
 if (!r_io_mmap_refresh_buf (mmo) ) {
  eprintf ("io_mmap: failed to refresh the mmap backed buffer.\n");

 }
 return len;
}
