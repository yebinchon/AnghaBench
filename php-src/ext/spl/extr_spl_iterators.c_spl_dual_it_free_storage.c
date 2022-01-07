
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_14__ {scalar_t__ regex; scalar_t__ pce; } ;
struct TYPE_13__ {int zcache; } ;
struct TYPE_12__ {int zarrayit; int iterator; } ;
struct TYPE_15__ {TYPE_8__* cbfilter; TYPE_4__ regex; TYPE_3__ caching; TYPE_2__ append; } ;
struct TYPE_11__ {int zobject; } ;
struct TYPE_17__ {scalar_t__ dit_type; int std; TYPE_5__ u; TYPE_1__ inner; } ;
typedef TYPE_7__ spl_dual_it_object ;
struct TYPE_16__ {scalar_t__ object; int function_name; } ;
struct TYPE_18__ {TYPE_6__ fci; } ;
typedef TYPE_8__ _spl_cbfilter_it_intern ;


 scalar_t__ DIT_AppendIterator ;
 scalar_t__ DIT_CachingIterator ;
 scalar_t__ DIT_CallbackFilterIterator ;
 scalar_t__ DIT_RecursiveCachingIterator ;
 scalar_t__ DIT_RecursiveCallbackFilterIterator ;
 scalar_t__ DIT_RecursiveRegexIterator ;
 scalar_t__ DIT_RegexIterator ;
 scalar_t__ IS_UNDEF ;
 int OBJ_RELEASE (scalar_t__) ;
 int Z_ISUNDEF (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 int efree (TYPE_8__*) ;
 int php_pcre_pce_decref (scalar_t__) ;
 TYPE_7__* spl_dual_it_from_obj (int *) ;
 int zend_iterator_dtor (int ) ;
 int zend_object_std_dtor (int *) ;
 int zend_string_release_ex (scalar_t__,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_dual_it_free_storage(zend_object *_object)
{
 spl_dual_it_object *object = spl_dual_it_from_obj(_object);


 if (!Z_ISUNDEF(object->inner.zobject)) {
  zval_ptr_dtor(&object->inner.zobject);
 }

 if (object->dit_type == DIT_AppendIterator) {
  zend_iterator_dtor(object->u.append.iterator);
  if (Z_TYPE(object->u.append.zarrayit) != IS_UNDEF) {
   zval_ptr_dtor(&object->u.append.zarrayit);
  }
 }

 if (object->dit_type == DIT_CachingIterator || object->dit_type == DIT_RecursiveCachingIterator) {
  zval_ptr_dtor(&object->u.caching.zcache);
 }

 if (object->dit_type == DIT_RegexIterator || object->dit_type == DIT_RecursiveRegexIterator) {
  if (object->u.regex.pce) {
   php_pcre_pce_decref(object->u.regex.pce);
  }
  if (object->u.regex.regex) {
   zend_string_release_ex(object->u.regex.regex, 0);
  }
 }

 if (object->dit_type == DIT_CallbackFilterIterator || object->dit_type == DIT_RecursiveCallbackFilterIterator) {
  if (object->u.cbfilter) {
   _spl_cbfilter_it_intern *cbfilter = object->u.cbfilter;
   object->u.cbfilter = ((void*)0);
   zval_ptr_dtor(&cbfilter->fci.function_name);
   if (cbfilter->fci.object) {
    OBJ_RELEASE(cbfilter->fci.object);
   }
   efree(cbfilter);
  }
 }

 zend_object_std_dtor(&object->std);
}
