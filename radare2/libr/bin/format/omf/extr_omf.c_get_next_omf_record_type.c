
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ut8 ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ OMF_record_handler ;
typedef TYPE_2__ OMF_record ;



__attribute__((used)) static OMF_record_handler *get_next_omf_record_type(OMF_record_handler *tmp, ut8 type) {
 while (tmp) {
  if (((OMF_record *)tmp)->type == type) {
   return (tmp);
  }
  tmp = tmp->next;
 }
 return ((void*)0);
}
