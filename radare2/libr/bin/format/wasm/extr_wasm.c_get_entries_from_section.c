
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
typedef scalar_t__ ut32 ;
struct TYPE_6__ {int * buf; } ;
struct TYPE_5__ {scalar_t__ payload_len; scalar_t__ count; int name; int payload_data; } ;
typedef int (* RListFree ) (void*) ;
typedef int RList ;
typedef int RBuffer ;
typedef TYPE_1__ RBinWasmSection ;
typedef TYPE_2__ RBinWasmObj ;
typedef void* (* ParseEntryFcn ) (int *,scalar_t__) ;


 int R_BUF_SET ;
 int eprintf (char*,int ) ;
 int r_buf_seek (int *,int ,int ) ;
 scalar_t__ r_buf_size (int *) ;
 scalar_t__ r_buf_tell (int *) ;
 int r_list_append (int *,void*) ;
 int * r_list_newf (int (*) (void*)) ;
 int r_return_val_if_fail (int,int *) ;

__attribute__((used)) static RList *get_entries_from_section (RBinWasmObj *bin, RBinWasmSection *sec, ParseEntryFcn parse_entry, RListFree free_entry) {
 r_return_val_if_fail (sec && bin, ((void*)0));

 RList *ret = r_list_newf (free_entry);
 if (!ret) {
  return ((void*)0);
 }
 RBuffer *b = bin->buf;
 r_buf_seek (b, sec->payload_data, R_BUF_SET);
 ut32 r = 0;
 ut64 max = r_buf_tell (b) + sec->payload_len - 1;
 if (!(max < r_buf_size (b))) {
  goto beach;
 }
 while (r_buf_tell (b) <= max && r < sec->count) {
  void *entry = parse_entry (b, max);
  if (!entry) {
   goto beach;
  }

  if (!r_list_append (ret, entry)) {
   free_entry (entry);

  }
  r++;
 }
 return ret;
beach:
 eprintf ("[wasm] error: beach reading entries for section %s\n", sec->name);
 return ret;
}
