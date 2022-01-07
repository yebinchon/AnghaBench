
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;
typedef int zend_class_entry ;
typedef int spl_pqueue_elem ;
struct TYPE_7__ {int properties; } ;
struct TYPE_5__ {TYPE_3__* heap; int flags; TYPE_4__ std; } ;
typedef TYPE_1__ spl_heap_object ;
typedef int copy_ctor_func_t ;
struct TYPE_6__ {int flags; int count; } ;
typedef int HashTable ;


 int SPL_HEAP_CORRUPTED ;
 int SPL_PQUEUE_EXTR_BOTH ;
 int ZVAL_BOOL (int *,int) ;
 int ZVAL_LONG (int *,int ) ;
 int Z_TRY_ADDREF_P (int *) ;
 int add_index_zval (int *,int,int *) ;
 int array_init (int *) ;
 int rebuild_object_properties (TYPE_4__*) ;
 int * spl_ce_SplPriorityQueue ;
 int * spl_gen_private_prop_name (int *,char*,int) ;
 void* spl_heap_elem (TYPE_3__*,int) ;
 TYPE_1__* spl_heap_from_obj (int *) ;
 int spl_pqueue_extract_helper (int *,int *,int ) ;
 int zend_hash_copy (int *,int ,int ) ;
 scalar_t__ zend_hash_num_elements (int ) ;
 int zend_hash_update (int *,int *,int *) ;
 int * zend_new_array (scalar_t__) ;
 int zend_string_release_ex (int *,int ) ;
 scalar_t__ zval_add_ref ;

__attribute__((used)) static HashTable* spl_heap_object_get_debug_info_helper(zend_class_entry *ce, zend_object *obj, int *is_temp) {
 spl_heap_object *intern = spl_heap_from_obj(obj);
 zval tmp, heap_array;
 zend_string *pnstr;
 HashTable *debug_info;
 int i;

 *is_temp = 1;

 if (!intern->std.properties) {
  rebuild_object_properties(&intern->std);
 }

 debug_info = zend_new_array(zend_hash_num_elements(intern->std.properties) + 1);
 zend_hash_copy(debug_info, intern->std.properties, (copy_ctor_func_t) zval_add_ref);

 pnstr = spl_gen_private_prop_name(ce, "flags", sizeof("flags")-1);
 ZVAL_LONG(&tmp, intern->flags);
 zend_hash_update(debug_info, pnstr, &tmp);
 zend_string_release_ex(pnstr, 0);

 pnstr = spl_gen_private_prop_name(ce, "isCorrupted", sizeof("isCorrupted")-1);
 ZVAL_BOOL(&tmp, intern->heap->flags&SPL_HEAP_CORRUPTED);
 zend_hash_update(debug_info, pnstr, &tmp);
 zend_string_release_ex(pnstr, 0);

 array_init(&heap_array);

 for (i = 0; i < intern->heap->count; ++i) {
  if (ce == spl_ce_SplPriorityQueue) {
   spl_pqueue_elem *pq_elem = spl_heap_elem(intern->heap, i);
   zval elem;
   spl_pqueue_extract_helper(&elem, pq_elem, SPL_PQUEUE_EXTR_BOTH);
   add_index_zval(&heap_array, i, &elem);
  } else {
   zval *elem = spl_heap_elem(intern->heap, i);
   add_index_zval(&heap_array, i, elem);
   Z_TRY_ADDREF_P(elem);
  }
 }

 pnstr = spl_gen_private_prop_name(ce, "heap", sizeof("heap")-1);
 zend_hash_update(debug_info, pnstr, &heap_array);
 zend_string_release_ex(pnstr, 0);

 return debug_info;
}
