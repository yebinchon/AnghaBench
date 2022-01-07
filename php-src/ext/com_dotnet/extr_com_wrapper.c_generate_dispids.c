
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_ulong ;
typedef int zend_string ;
struct TYPE_4__ {int * name_to_dispid; int * dispid_to_name; int object; } ;
typedef TYPE_1__ php_dispatchex ;
typedef int namebuf ;
struct TYPE_5__ {int function_table; } ;
typedef int HashPosition ;


 int ALLOC_HASHTABLE (int *) ;
 int HASH_KEY_IS_LONG ;
 int HASH_KEY_NON_EXISTENT ;
 char* ZEND_ULONG_FMT ;
 int ZVAL_LONG (int *,int) ;
 int ZVAL_PTR_DTOR ;
 int ZVAL_STR_COPY (int *,int *) ;
 TYPE_3__* Z_OBJCE (int ) ;
 int * Z_OBJPROP (int ) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;
 int * zend_hash_find (int *,int *) ;
 int zend_hash_get_current_key_ex (int *,int **,int*,int *) ;
 int zend_hash_index_update (int *,int,int *) ;
 int zend_hash_init (int *,int ,int *,int ,int ) ;
 int zend_hash_internal_pointer_reset_ex (int *,int *) ;
 int zend_hash_move_forward_ex (int *,int *) ;
 int zend_hash_next_free_element (int *) ;
 int zend_hash_update (int *,int *,int *) ;
 int zend_string_addref (int *) ;
 int * zend_string_init (char*,int ,int ) ;
 int zend_string_release_ex (int *,int ) ;

__attribute__((used)) static void generate_dispids(php_dispatchex *disp)
{
 HashPosition pos;
 zend_string *name = ((void*)0);
 zval *tmp, tmp2;
 int keytype;
 zend_ulong pid;

 if (disp->dispid_to_name == ((void*)0)) {
  ALLOC_HASHTABLE(disp->dispid_to_name);
  ALLOC_HASHTABLE(disp->name_to_dispid);
  zend_hash_init(disp->name_to_dispid, 0, ((void*)0), ZVAL_PTR_DTOR, 0);
  zend_hash_init(disp->dispid_to_name, 0, ((void*)0), ZVAL_PTR_DTOR, 0);
 }


 if (Z_OBJPROP(disp->object)) {
  zend_hash_internal_pointer_reset_ex(Z_OBJPROP(disp->object), &pos);
  while (HASH_KEY_NON_EXISTENT != (keytype =
    zend_hash_get_current_key_ex(Z_OBJPROP(disp->object), &name,
    &pid, &pos))) {
   char namebuf[32];
   if (keytype == HASH_KEY_IS_LONG) {
    snprintf(namebuf, sizeof(namebuf), ZEND_ULONG_FMT, pid);
    name = zend_string_init(namebuf, strlen(namebuf), 0);
   } else {
    zend_string_addref(name);
   }

   zend_hash_move_forward_ex(Z_OBJPROP(disp->object), &pos);


   if ((tmp = zend_hash_find(disp->name_to_dispid, name)) != ((void*)0)) {
    zend_string_release_ex(name, 0);
    continue;
   }


   ZVAL_STR_COPY(&tmp2, name);
   pid = zend_hash_next_free_element(disp->dispid_to_name);
   zend_hash_index_update(disp->dispid_to_name, pid, &tmp2);

   ZVAL_LONG(&tmp2, pid);
   zend_hash_update(disp->name_to_dispid, name, &tmp2);

   zend_string_release_ex(name, 0);
  }
 }


 if (Z_OBJCE(disp->object)) {
  zend_hash_internal_pointer_reset_ex(&Z_OBJCE(disp->object)->function_table, &pos);
  while (HASH_KEY_NON_EXISTENT != (keytype =
    zend_hash_get_current_key_ex(&Z_OBJCE(disp->object)->function_table,
     &name, &pid, &pos))) {

   char namebuf[32];
   if (keytype == HASH_KEY_IS_LONG) {
    snprintf(namebuf, sizeof(namebuf), "%d", pid);
    name = zend_string_init(namebuf, strlen(namebuf), 0);
   } else {
    zend_string_addref(name);
   }

   zend_hash_move_forward_ex(&Z_OBJCE(disp->object)->function_table, &pos);


   if ((tmp = zend_hash_find(disp->name_to_dispid, name)) != ((void*)0)) {
    zend_string_release_ex(name, 0);
    continue;
   }


   ZVAL_STR_COPY(&tmp2, name);
   pid = zend_hash_next_free_element(disp->dispid_to_name);
   zend_hash_index_update(disp->dispid_to_name, pid, &tmp2);

   ZVAL_LONG(&tmp2, pid);
   zend_hash_update(disp->name_to_dispid, name, &tmp2);

   zend_string_release_ex(name, 0);
  }
 }
}
