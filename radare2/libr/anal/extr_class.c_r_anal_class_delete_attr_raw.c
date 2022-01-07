
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ev; int sdb_classes_attrs; } ;
struct TYPE_5__ {char const* class_name; char const* attr_id; int attr_type; } ;
typedef TYPE_1__ REventClassAttr ;
typedef int RAnalClassErr ;
typedef int RAnalClassAttrType ;
typedef TYPE_2__ RAnal ;


 int R_ANAL_CLASS_ERR_SUCCESS ;
 int R_EVENT_CLASS_ATTR_DEL ;
 char* attr_type_id (int ) ;
 char* key_attr_content (char const*,char const*,char const*) ;
 char* key_attr_content_specific (char const*,char const*,char const*) ;
 char* key_attr_type_attrs (char const*,char const*) ;
 char* key_attr_types (char const*) ;
 int r_event_send (int ,int ,TYPE_1__*) ;
 int sdb_array_remove (int ,char*,char const*,int ) ;
 int sdb_exists (int ,char*) ;
 int sdb_remove (int ,char*,int ) ;

__attribute__((used)) static RAnalClassErr r_anal_class_delete_attr_raw(RAnal *anal, const char *class_name, RAnalClassAttrType attr_type, const char *attr_id) {
 const char *attr_type_str = attr_type_id (attr_type);

 char *key = key_attr_content (class_name, attr_type_str, attr_id);
 sdb_remove (anal->sdb_classes_attrs, key, 0);
 key = key_attr_content_specific (class_name, attr_type_str, attr_id);
 sdb_remove (anal->sdb_classes_attrs, key, 0);

 key = key_attr_type_attrs (class_name, attr_type_str);
 sdb_array_remove (anal->sdb_classes_attrs, key, attr_id, 0);
 if (!sdb_exists (anal->sdb_classes_attrs, key)) {
  sdb_array_remove (anal->sdb_classes_attrs, key_attr_types (class_name), attr_type_str, 0);
 }

 REventClassAttr event = {
  .class_name = class_name,
  .attr_type = attr_type,
  .attr_id = attr_id
 };
 r_event_send (anal->ev, R_EVENT_CLASS_ATTR_DEL, &event);

 return R_ANAL_CLASS_ERR_SUCCESS;
}
