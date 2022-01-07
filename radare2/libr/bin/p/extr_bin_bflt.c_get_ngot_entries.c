
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut32 ;
struct r_bin_bflt_obj {int size; int b; TYPE_1__* hdr; } ;
struct TYPE_2__ {int data_end; int data_start; } ;


 int VALID_GOT_ENTRY (int) ;
 int r_buf_read_at (int ,int,int *,int) ;

__attribute__((used)) static int get_ngot_entries(struct r_bin_bflt_obj *obj) {
 ut32 data_size = obj->hdr->data_end - obj->hdr->data_start;
 int i = 0, n_got = 0;
 if (data_size > obj->size) {
  return 0;
 }
 for (i = 0, n_got = 0; i < data_size; i += 4, n_got++) {
  ut32 entry, offset = obj->hdr->data_start;
  if (offset + i + sizeof (ut32) > obj->size ||
      offset + i + sizeof (ut32) < offset) {
   return 0;
  }
  int len = r_buf_read_at (obj->b, offset + i, (ut8 *) &entry,
   sizeof (ut32));
  if (len != sizeof (ut32)) {
   return 0;
  }
  if (!VALID_GOT_ENTRY (entry)) {
   break;
  }
 }
 return n_got;
}
