
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_7__ {int dyn_entries; TYPE_1__* dyn_buf; } ;
struct TYPE_6__ {int d_ptr; int d_val; } ;
struct TYPE_5__ {int d_tag; TYPE_2__ d_un; } ;
typedef TYPE_3__ ELFOBJ ;
 int r_warn_if_reached () ;

__attribute__((used)) static ut64 get_dyn_entry(ELFOBJ *bin, int dyn_entry) {
 int i;
 for (i = 0; i < bin->dyn_entries; i++) {
  if (bin->dyn_buf[i].d_tag == dyn_entry) {
   switch (bin->dyn_buf[i].d_tag) {
   case 131:
   case 130:
   case 133:
   case 134:
    return bin->dyn_buf[i].d_un.d_ptr;
   case 128:
   case 129:
   case 132:
    return bin->dyn_buf[i].d_un.d_val;
   default:
    r_warn_if_reached ();
    break;
   }
  }
 }

 return -1;
}
