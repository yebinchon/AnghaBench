
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_9__ {TYPE_1__** sections; TYPE_3__* records; } ;
typedef TYPE_2__ r_bin_omf_obj ;
struct TYPE_11__ {TYPE_1__* content; } ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
struct TYPE_8__ {scalar_t__ size; scalar_t__ vaddr; } ;
typedef TYPE_3__ OMF_record_handler ;
typedef TYPE_4__ OMF_record ;


 int OMF_SEGDEF ;
 TYPE_3__* get_next_omf_record_type (TYPE_3__*,int ) ;

__attribute__((used)) static void get_omf_section_info(r_bin_omf_obj *obj) {
 OMF_record_handler *tmp = obj->records;
 ut32 ct_obj = 0;

 while ((tmp = get_next_omf_record_type (tmp, OMF_SEGDEF))) {
  obj->sections[ct_obj] = ((OMF_record *)tmp)->content;
  ((OMF_record *)tmp)->content = ((void*)0);

  if (!ct_obj) {
   obj->sections[ct_obj]->vaddr = 0;
  } else {
   obj->sections[ct_obj]->vaddr = obj->sections[ct_obj - 1]->vaddr +
           obj->sections[ct_obj - 1]->size;
  }
  ct_obj++;
  tmp = tmp->next;
  }
}
