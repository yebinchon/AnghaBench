
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;


typedef int zval ;
struct TYPE_21__ {TYPE_1__* funcs; } ;
typedef TYPE_2__ zend_object_iterator ;
struct TYPE_22__ {TYPE_2__* (* get_iterator ) (TYPE_3__*,int *,int ) ;} ;
typedef TYPE_3__ zend_class_entry ;
typedef int spl_sub_iterator ;
struct TYPE_23__ {size_t level; int flags; int max_depth; int const mode; TYPE_14__* iterators; scalar_t__ endChildren; TYPE_3__* ce; scalar_t__ beginChildren; scalar_t__ callGetChildren; scalar_t__ nextElement; scalar_t__ callHasChildren; } ;
typedef TYPE_4__ spl_recursive_it_object ;
struct TYPE_20__ {int (* rewind ) (TYPE_2__*) ;int (* valid ) (TYPE_2__*) ;int (* move_forward ) (TYPE_2__*) ;} ;
struct TYPE_19__ {int state; int zobject; TYPE_3__* ce; TYPE_2__* iterator; } ;


 scalar_t__ EG (int ) ;
 int FAILURE ;
 int IS_OBJECT ;
 int IS_UNDEF ;
 int RIT_CATCH_GET_CHILD ;
 int SPL_FETCH_SUB_ITERATOR (TYPE_2__*,TYPE_4__*) ;
 int ZVAL_COPY_VALUE (int *,int *) ;
 int ZVAL_UNDEF (int *) ;
 TYPE_3__* Z_OBJCE (int ) ;
 int Z_OBJ_P (int *) ;
 int Z_TYPE (int ) ;
 TYPE_14__* erealloc (TYPE_14__*,int) ;
 int exception ;
 int instanceof_function (TYPE_3__*,int ) ;
 int spl_ce_RecursiveIterator ;
 int spl_ce_UnexpectedValueException ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 TYPE_2__* stub3 (TYPE_3__*,int *,int ) ;
 int stub4 (TYPE_2__*) ;
 int zend_call_method_with_0_params (int ,TYPE_3__*,scalar_t__*,char*,int *) ;
 int zend_clear_exception () ;
 int zend_is_true (int *) ;
 int zend_iterator_dtor (TYPE_2__*) ;
 int zend_throw_exception (int ,char*,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_recursive_it_move_forward_ex(spl_recursive_it_object *object, zval *zthis)
{
 zend_object_iterator *iterator;
 zval *zobject;
 zend_class_entry *ce;
 zval retval, child;
 zend_object_iterator *sub_iter;
 int has_children;

 SPL_FETCH_SUB_ITERATOR(iterator, object);

 while (!EG(exception)) {
next_step:
  iterator = object->iterators[object->level].iterator;
  switch (object->iterators[object->level].state) {
   case 131:
    iterator->funcs->move_forward(iterator);
    if (EG(exception)) {
     if (!(object->flags & RIT_CATCH_GET_CHILD)) {
      return;
     } else {
      zend_clear_exception();
     }
    }

   case 129:
    if (iterator->funcs->valid(iterator) == FAILURE) {
     break;
    }
    object->iterators[object->level].state = 128;

   case 128:
    ce = object->iterators[object->level].ce;
    zobject = &object->iterators[object->level].zobject;
    if (object->callHasChildren) {
     zend_call_method_with_0_params(Z_OBJ_P(zthis), object->ce, &object->callHasChildren, "callHasChildren", &retval);
    } else {
     zend_call_method_with_0_params(Z_OBJ_P(zobject), ce, ((void*)0), "haschildren", &retval);
    }
    if (EG(exception)) {
     if (!(object->flags & RIT_CATCH_GET_CHILD)) {
      object->iterators[object->level].state = 131;
      return;
     } else {
      zend_clear_exception();
     }
    }
    if (Z_TYPE(retval) != IS_UNDEF) {
     has_children = zend_is_true(&retval);
     zval_ptr_dtor(&retval);
     if (has_children) {
      if (object->max_depth == -1 || object->max_depth > object->level) {
       switch (object->mode) {
       case 134:
       case 135:
        object->iterators[object->level].state = 132;
        goto next_step;
       case 133:
        object->iterators[object->level].state = 130;
        goto next_step;
       }
      } else {

       if (object->mode == 134) {

        object->iterators[object->level].state = 131;
        goto next_step;
       }
      }
     }
    }
    if (object->nextElement) {
     zend_call_method_with_0_params(Z_OBJ_P(zthis), object->ce, &object->nextElement, "nextelement", ((void*)0));
    }
    object->iterators[object->level].state = 131;
    if (EG(exception)) {
     if (!(object->flags & RIT_CATCH_GET_CHILD)) {
      return;
     } else {
      zend_clear_exception();
     }
    }
    return ;
   case 130:
    if (object->nextElement && (object->mode == 133 || object->mode == 135)) {
     zend_call_method_with_0_params(Z_OBJ_P(zthis), object->ce, &object->nextElement, "nextelement", ((void*)0));
    }
    if (object->mode == 133) {
     object->iterators[object->level].state = 132;
    } else {
     object->iterators[object->level].state = 131;
    }
    return ;
   case 132:
    ce = object->iterators[object->level].ce;
    zobject = &object->iterators[object->level].zobject;
    if (object->callGetChildren) {
     zend_call_method_with_0_params(Z_OBJ_P(zthis), object->ce, &object->callGetChildren, "callGetChildren", &child);
    } else {
     zend_call_method_with_0_params(Z_OBJ_P(zobject), ce, ((void*)0), "getchildren", &child);
    }

    if (EG(exception)) {
     if (!(object->flags & RIT_CATCH_GET_CHILD)) {
      return;
     } else {
      zend_clear_exception();
      zval_ptr_dtor(&child);
      object->iterators[object->level].state = 131;
      goto next_step;
     }
    }

    if (Z_TYPE(child) == IS_UNDEF || Z_TYPE(child) != IS_OBJECT ||
      !((ce = Z_OBJCE(child)) && instanceof_function(ce, spl_ce_RecursiveIterator))) {
     zval_ptr_dtor(&child);
     zend_throw_exception(spl_ce_UnexpectedValueException, "Objects returned by RecursiveIterator::getChildren() must implement RecursiveIterator", 0);
     return;
    }

    if (object->mode == 135) {
     object->iterators[object->level].state = 130;
    } else {
     object->iterators[object->level].state = 131;
    }
    object->iterators = erealloc(object->iterators, sizeof(spl_sub_iterator) * (++object->level+1));
    sub_iter = ce->get_iterator(ce, &child, 0);
    ZVAL_COPY_VALUE(&object->iterators[object->level].zobject, &child);
    object->iterators[object->level].iterator = sub_iter;
    object->iterators[object->level].ce = ce;
    object->iterators[object->level].state = 129;
    if (sub_iter->funcs->rewind) {
     sub_iter->funcs->rewind(sub_iter);
    }
    if (object->beginChildren) {
     zend_call_method_with_0_params(Z_OBJ_P(zthis), object->ce, &object->beginChildren, "beginchildren", ((void*)0));
     if (EG(exception)) {
      if (!(object->flags & RIT_CATCH_GET_CHILD)) {
       return;
      } else {
       zend_clear_exception();
      }
     }
    }
    goto next_step;
  }

  if (object->level > 0) {
   if (object->endChildren) {
    zend_call_method_with_0_params(Z_OBJ_P(zthis), object->ce, &object->endChildren, "endchildren", ((void*)0));
    if (EG(exception)) {
     if (!(object->flags & RIT_CATCH_GET_CHILD)) {
      return;
     } else {
      zend_clear_exception();
     }
    }
   }
   if (object->level > 0) {
    zval garbage;
    ZVAL_COPY_VALUE(&garbage, &object->iterators[object->level].zobject);
    ZVAL_UNDEF(&object->iterators[object->level].zobject);
    zval_ptr_dtor(&garbage);
    zend_iterator_dtor(iterator);
    object->level--;
   }
  } else {
   return;
  }
 }
}
