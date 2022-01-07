
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * value; int * key; } ;
typedef TYPE_1__ DsoJsonDictEntry ;


 int dso_json_obj_del (int *) ;
 int free (TYPE_1__*) ;

void dso_json_dict_entry_free (void *y) {
 DsoJsonDictEntry *entry = (DsoJsonDictEntry *)y;
 if (entry) {
  dso_json_obj_del (entry->key);
  dso_json_obj_del (entry->value);
  entry->key = ((void*)0);
  entry->value = ((void*)0);
 }
 free (entry);
}
