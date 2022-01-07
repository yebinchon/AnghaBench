
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
struct TYPE_6__ {TYPE_2__* records; } ;
typedef TYPE_1__ r_bin_omf_obj ;
struct TYPE_8__ {scalar_t__ size; } ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_2__ OMF_record_handler ;
typedef TYPE_3__ OMF_record ;


 TYPE_2__* load_record_omf (int const*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int load_all_omf_records(r_bin_omf_obj *obj, const ut8 *buf, ut64 size) {
 ut64 ct = 0;
 OMF_record_handler *new_rec = ((void*)0);
 OMF_record_handler *tmp = ((void*)0);

 while (ct < size) {
  if (!(new_rec = load_record_omf (buf + ct, ct, size - ct))) {
   return 0;
  }


  if (!tmp) {
   obj->records = new_rec;
   tmp = obj->records;
  } else {
   tmp->next = new_rec;
   tmp = tmp->next;
  }
  ct += 3 + ((OMF_record *)tmp)->size;
 }
 return 1;
}
