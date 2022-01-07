
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_4__ {int * binsym; int mem; int kv; int lines; int methods_ht; int classes_ht; int classes; int symbols; int strings_db; int strings; int sections; int relocs; int libs; int imports; int fields; int entries; int addr2klassmethod; } ;
typedef TYPE_1__ RBinObject ;


 size_t R_BIN_SYM_LAST ;
 int free (int ) ;
 int ht_pp_free (int ) ;
 int ht_up_free (int ) ;
 int r_list_free (int ) ;
 int r_rbtree_free (int ,int ) ;
 int r_return_if_fail (TYPE_1__*) ;
 int reloc_free ;
 int sdb_free (int ) ;

__attribute__((used)) static void object_delete_items(RBinObject *o) {
 ut32 i = 0;
 r_return_if_fail (o);
 sdb_free (o->addr2klassmethod);
 r_list_free (o->entries);
 r_list_free (o->fields);
 r_list_free (o->imports);
 r_list_free (o->libs);
 r_rbtree_free (o->relocs, reloc_free);
 r_list_free (o->sections);
 r_list_free (o->strings);
 ht_up_free (o->strings_db);
 r_list_free (o->symbols);
 r_list_free (o->classes);
 ht_pp_free (o->classes_ht);
 ht_pp_free (o->methods_ht);
 r_list_free (o->lines);
 sdb_free (o->kv);
 r_list_free (o->mem);
 for (i = 0; i < R_BIN_SYM_LAST; i++) {
  free (o->binsym[i]);
 }
}
