
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int image_base; int heap_nbytes; int stack_nbytes; int code_offset; int argv_index; int heap_index; int stack_index; int code_index; int fpu; int cpu; int cflags; int version; } ;
typedef TYPE_1__ lmf_header ;
typedef int Sdb ;
typedef int RBuffer ;


 scalar_t__ QNX_HDR_SIZE ;
 int QNX_HEADER_ADDR ;
 scalar_t__ r_buf_fread_at (int *,int ,int *,char*,int) ;
 int r_buf_size (int *) ;
 int sdb_fmt (char*,int ) ;
 int sdb_set (int *,char*,int ,int ) ;

__attribute__((used)) static int lmf_header_load(lmf_header *lmfh, RBuffer *buf, Sdb *db) {
 if (r_buf_size (buf) < sizeof (lmf_header)) {
  return 0;
 }
 if (r_buf_fread_at (buf, QNX_HEADER_ADDR, (ut8 *) lmfh, "iiiiiiiicccciiiicc", 1) < QNX_HDR_SIZE) {
  return 0;
 }
 sdb_set (db, "qnx.version", sdb_fmt ("0x%xH", lmfh->version), 0);
 sdb_set (db, "qnx.cflags", sdb_fmt ("0x%xH", lmfh->cflags), 0);
 sdb_set (db, "qnx.cpu", sdb_fmt ("0x%xH", lmfh->cpu), 0);
 sdb_set (db, "qnx.fpu", sdb_fmt ("0x%xH", lmfh->fpu), 0);
 sdb_set (db, "qnx.code_index", sdb_fmt ("0x%x", lmfh->code_index), 0);
 sdb_set (db, "qnx.stack_index", sdb_fmt ("0x%x", lmfh->stack_index), 0);
 sdb_set (db, "qnx.heap_index", sdb_fmt ("0x%x", lmfh->heap_index), 0);
 sdb_set (db, "qnx.argv_index", sdb_fmt ("0x%x", lmfh->argv_index), 0);
 sdb_set (db, "qnx.code_offset", sdb_fmt ("0x%x", lmfh->code_offset), 0);
 sdb_set (db, "qnx.stack_nbytes", sdb_fmt ("0x%x", lmfh->stack_nbytes), 0);
 sdb_set (db, "qnx.heap_nbytes", sdb_fmt ("0x%x", lmfh->heap_nbytes), 0);
 sdb_set (db, "qnx.image_base", sdb_fmt ("0x%x", lmfh->image_base), 0);
 return 1;
}
