
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_6__ {int * buf; } ;
struct TYPE_5__ {scalar_t__ payload_data; scalar_t__ payload_len; } ;
typedef int RList ;
typedef int RBuffer ;
typedef TYPE_1__ RBinWasmSection ;
typedef TYPE_2__ RBinWasmObj ;
typedef int RBinWasmCustomNameEntry ;


 int R_BUF_SET ;
 int * parse_custom_name_entry (int *,scalar_t__) ;
 int r_buf_seek (int *,scalar_t__,int ) ;
 scalar_t__ r_buf_size (int *) ;
 scalar_t__ r_buf_tell (int *) ;
 int r_list_append (int *,int *) ;
 int r_list_free (int *) ;
 int * r_list_new () ;

__attribute__((used)) static RList *r_bin_wasm_get_custom_name_entries (RBinWasmObj *bin, RBinWasmSection *sec) {
 RList *ret = r_list_new ();

 RBuffer *buf = bin->buf;

 r_buf_seek (buf, sec->payload_data, R_BUF_SET);
 ut64 max = sec->payload_data + sec->payload_len - 1;

 if (max > r_buf_size (buf)) {
  goto beach;
 }

 while (r_buf_tell (buf) < max) {
  RBinWasmCustomNameEntry *nam = parse_custom_name_entry (buf, max);

  if (!nam) {
   goto beach;
  }

  if (!r_list_append (ret, nam)) {
   goto beach;
  }
 }

 return ret;
beach:
 r_list_free (ret);
 return ((void*)0);
}
