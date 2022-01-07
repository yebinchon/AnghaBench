
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef int ut32 ;
typedef int ut16 ;
struct TYPE_19__ {int tag; } ;
struct TYPE_18__ {int loadaddr; } ;
struct TYPE_17__ {int io; TYPE_1__* file; } ;
struct TYPE_16__ {int fd; } ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RBinJavaObj ;
typedef TYPE_4__ RBinJavaCPTypeObj ;


 int R_FREE (int *) ;
 int eprintf (char*) ;
 int free (int *) ;
 int * malloc (scalar_t__) ;
 int memset (int *,int ,scalar_t__) ;
 int * r_bin_java_cp_get_bytes (int ,int*,int const*,scalar_t__ const) ;
 int r_bin_java_cp_get_size (TYPE_3__*,int ) ;
 TYPE_4__* r_bin_java_get_item_from_bin_cp_list (TYPE_3__*,int ) ;
 int r_cmd_java_reload_bin_from_buf (TYPE_2__*,TYPE_3__*,int *,scalar_t__) ;
 int r_core_extend_at (TYPE_2__*,scalar_t__,int) ;
 scalar_t__ r_core_seek (TYPE_2__*,scalar_t__,int) ;
 scalar_t__ r_core_shift_block (TYPE_2__*,scalar_t__,int ,int) ;
 scalar_t__ r_core_write_at (TYPE_2__*,scalar_t__,int const*,int) ;
 scalar_t__ r_io_read_at (int ,int ,int *,scalar_t__) ;
 scalar_t__ r_io_resize (int ,scalar_t__) ;
 scalar_t__ r_io_size (int ) ;
 int r_io_use_fd (int ,int ) ;

__attribute__((used)) static int r_cmd_java_get_cp_bytes_and_write (RCore *core, RBinJavaObj *obj, ut16 idx, ut64 addr, const ut8 * buf, const ut64 len) {
 int res = 0;
 RBinJavaCPTypeObj *cp_obj = r_bin_java_get_item_from_bin_cp_list (obj, idx);
 ut64 c_file_sz = r_io_size (core->io);
 ut32 n_sz = 0, c_sz = obj ? r_bin_java_cp_get_size (obj, idx): -1;
 ut8 * bytes = ((void*)0);

 if (c_sz == -1) {
  return res;
 }

 bytes = r_bin_java_cp_get_bytes (cp_obj->tag, &n_sz, buf, len);

 if (n_sz < c_sz) {
  res = r_core_shift_block (core, addr+c_sz, 0, (int)n_sz - (int)c_sz) &&
  r_io_resize(core->io, c_file_sz + (int) n_sz - (int) c_sz);
 } else if (n_sz > c_sz) {
  res = r_core_extend_at(core, addr, (int)n_sz - (int)c_sz);
 } else {
  eprintf ("[X] r_cmd_java_get_cp_bytes_and_write: Failed to resize the file correctly aborting.\n");
  return res;
 }

 if (n_sz > 0 && bytes) {
  res = r_core_write_at(core, addr, (const ut8 *)bytes, n_sz) && r_core_seek (core, addr, 1);
 }

 if (res == 0) {
  eprintf ("[X] r_cmd_java_get_cp_bytes_and_write: Failed to write the bytes to the file correctly aborting.\n");
  return res;
 }

 R_FREE (bytes);

 if (res == 1) {
  ut64 n_file_sz = 0;
  ut8 * bin_buffer = ((void*)0);
  res = r_io_use_fd (core->io, core->file->fd);
  n_file_sz = r_io_size (core->io);
  bin_buffer = n_file_sz > 0 ? malloc (n_file_sz) : ((void*)0);
  if (bin_buffer) {
   memset (bin_buffer, 0, n_file_sz);
   res = n_file_sz == r_io_read_at (core->io, obj->loadaddr,
    bin_buffer, n_file_sz) ? 1 : 0;
   if (res == 1) {
    res = r_cmd_java_reload_bin_from_buf (
     core, obj, bin_buffer, n_file_sz);
   } else {
    eprintf ("[X] r_cmd_java_get_cp_bytes_and_write: Failed to read the file in aborted, bin reload.\n");
   }
   free (bin_buffer);
  }
 }
 return res;
}
