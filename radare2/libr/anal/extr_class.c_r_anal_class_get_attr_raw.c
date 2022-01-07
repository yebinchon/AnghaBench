
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sdb_classes_attrs; } ;
typedef int RAnalClassAttrType ;
typedef TYPE_1__ RAnal ;


 char* attr_type_id (int ) ;
 char* key_attr_content (char const*,char const*,char const*) ;
 char* key_attr_content_specific (char const*,char const*,char const*) ;
 char* sdb_get (int ,char*,int ) ;

__attribute__((used)) static char *r_anal_class_get_attr_raw(RAnal *anal, const char *class_name, RAnalClassAttrType attr_type, const char *attr_id, bool specific) {
 const char *attr_type_str = attr_type_id (attr_type);
 char *key = specific
   ? key_attr_content_specific (class_name, attr_type_str, attr_id)
   : key_attr_content (class_name, attr_type_str, attr_id);
 char *ret = sdb_get (anal->sdb_classes_attrs, key, 0);
 return ret;
}
