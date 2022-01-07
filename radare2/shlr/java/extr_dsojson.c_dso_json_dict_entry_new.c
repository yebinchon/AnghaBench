
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {void* value; int key; } ;
struct TYPE_6__ {TYPE_5__* _dict_entry; } ;
struct TYPE_7__ {TYPE_1__ val; int info; } ;
typedef TYPE_2__ DsoJsonObj ;
typedef int DsoJsonDictEntry ;


 int DSO_JSON_DICT_ENTRY ;
 TYPE_5__* calloc (int,int) ;
 int dso_json_null_free (TYPE_2__*) ;
 void* dso_json_null_new () ;
 int dso_json_str_new () ;
 int get_type_info (int ) ;

DsoJsonObj * dso_json_dict_entry_new () {
 DsoJsonObj *x = dso_json_null_new ();
 if (!x) return ((void*)0);
 x->info = get_type_info (DSO_JSON_DICT_ENTRY);
 x->val._dict_entry = calloc (sizeof (DsoJsonDictEntry), 1);
 if (!x->val._dict_entry) {
  dso_json_null_free (x);
  return ((void*)0);
 }
 x->val._dict_entry->key = dso_json_str_new ();
 x->val._dict_entry->value = dso_json_null_new ();
 return x;
}
