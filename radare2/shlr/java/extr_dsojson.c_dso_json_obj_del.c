
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int _dict_entry; int _dict; int _str; int _num; } ;
struct TYPE_9__ {TYPE_2__ val; TYPE_1__* info; } ;
struct TYPE_7__ {int type; } ;
typedef TYPE_3__ DsoJsonObj ;
 int dso_json_dict_entry_free (int ) ;
 int dso_json_dict_free (int ) ;
 int dso_json_list_free (TYPE_3__*) ;
 int dso_json_num_free (int ) ;
 int dso_json_str_free (int ) ;
 int free (TYPE_3__*) ;

void dso_json_obj_del (DsoJsonObj *dso_obj) {
 if (!dso_obj) return;
 switch (dso_obj->info->type) {
 case 130: break;
 case 129: dso_json_num_free (dso_obj->val._num); break;
 case 128: dso_json_str_free (dso_obj->val._str); break;
 case 131: dso_json_list_free (dso_obj); break;
 case 133: dso_json_dict_free (dso_obj->val._dict); break;
 case 132: dso_json_dict_entry_free (dso_obj->val._dict_entry); break;
 default: break;
 }




}
