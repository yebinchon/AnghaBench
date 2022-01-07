
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ut8 ;
typedef scalar_t__ ut32 ;
struct TYPE_5__ {TYPE_2__* records; } ;
typedef TYPE_1__ r_bin_omf_obj ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ OMF_record_handler ;
typedef TYPE_3__ OMF_record ;



__attribute__((used)) static ut32 count_omf_record_type(r_bin_omf_obj *obj, ut8 type) {
 OMF_record_handler *tmp = obj->records;
 ut32 ct = 0;

 while (tmp) {
  if (((OMF_record *)tmp)->type == type) {
   ct++;
  }
  tmp = tmp->next;
 }
 return ct;
}
