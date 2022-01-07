
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int nb_section; TYPE_2__** sections; TYPE_3__* records; } ;
typedef TYPE_1__ r_bin_omf_obj ;
struct TYPE_13__ {int seg_idx; struct TYPE_13__* next; } ;
struct TYPE_12__ {TYPE_5__* content; } ;
struct TYPE_11__ {struct TYPE_11__* next; } ;
struct TYPE_10__ {TYPE_5__* data; } ;
typedef TYPE_2__ OMF_segment ;
typedef TYPE_3__ OMF_record_handler ;
typedef TYPE_4__ OMF_record ;
typedef TYPE_5__ OMF_data ;


 int OMF_LEDATA ;
 int eprintf (char*) ;
 TYPE_3__* get_next_omf_record_type (TYPE_3__*,int ) ;

__attribute__((used)) static int get_omf_data_info(r_bin_omf_obj *obj) {
 OMF_record_handler *tmp = obj->records;
 OMF_data *tmp_data;

 while ((tmp = get_next_omf_record_type (tmp, OMF_LEDATA))) {
  if (((OMF_data *)((OMF_record *)tmp)->content)->seg_idx - 1 >= obj->nb_section) {
   eprintf ("Invalid Ledata record (bad segment index)\n");
   return 0;
  }
  OMF_segment *os = obj->sections[((OMF_data *)((OMF_record *)tmp)->content)->seg_idx - 1];
  if (os && (tmp_data = os->data)) {
   while (tmp_data->next) {
    tmp_data = tmp_data->next;
   }
   tmp_data->next = ((OMF_record *)tmp)->content;
  } else {
   obj->sections[((OMF_data *)((OMF_record *)tmp)->content)->seg_idx - 1]->data = ((OMF_record *)tmp)->content;
  }
  ((OMF_record *)tmp)->content = ((void*)0);
  tmp = tmp->next;
 }
 return 1;
}
