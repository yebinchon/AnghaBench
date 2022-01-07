
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int key; } ;
typedef TYPE_1__ DsoJsonDictEntry ;


 char* calloc (int,int) ;
 char* dso_json_obj_to_str (int ) ;
 int free (char*) ;
 int snprintf (char*,int,char*,char*,...) ;
 int strlen (char*) ;

char * dso_json_dict_entry_to_str (DsoJsonDictEntry * entry) {
 char *res = ((void*)0);
 if (entry) {
  char *key = dso_json_obj_to_str (entry->key);
  char *value = dso_json_obj_to_str (entry->value);
  if (key) {
   int len = 2 + 3 + strlen (key);
   if (value) len += strlen (value);
   res = calloc (len, 1);
   if (res) {
    if (value) {
     snprintf (res, len, "%s:%s", key, value);
    } else {
     snprintf (res, len, "%s:\"\"", key);
    }
   }
   free (key);
  }
  free (value);
 }
 return res;
}
