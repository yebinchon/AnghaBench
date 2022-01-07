
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int zval ;
struct TYPE_18__ {int function_name; } ;
struct TYPE_17__ {int filename; scalar_t__ last; TYPE_1__* opcodes; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_3__ common; TYPE_2__ op_array; } ;
typedef TYPE_4__ zend_function ;
struct TYPE_21__ {int key; int val; } ;
struct TYPE_20__ {int nNumUsed; scalar_t__ nInternalPointer; TYPE_6__* arData; } ;
struct TYPE_16__ {int lineno; } ;
typedef TYPE_5__ HashTable ;
typedef int CG ;
typedef TYPE_6__ Bucket ;


 scalar_t__ EXPECTED (int) ;
 int E_ERROR ;
 scalar_t__ IS_UNDEF ;
 scalar_t__ UNEXPECTED (int ) ;
 int ZEND_ASSERT (int) ;
 scalar_t__ ZEND_USER_FUNCTION ;
 scalar_t__ ZSTR_LEN (int) ;
 scalar_t__* ZSTR_VAL (int) ;
 TYPE_4__* Z_PTR (int ) ;
 TYPE_4__* Z_PTR_P (int *) ;
 scalar_t__ Z_TYPE (int ) ;
 int _zend_hash_append_ptr (TYPE_5__*,int,TYPE_4__*) ;
 int zend_error (int ,char*,scalar_t__*,...) ;
 int zend_hash_extend (TYPE_5__*,int,int ) ;
 int * zend_hash_find_ex (TYPE_5__*,int,int) ;
 int * zend_hash_update (TYPE_5__*,int,int *) ;
 int zend_set_compiled_filename (int) ;

__attribute__((used)) static void zend_accel_function_hash_copy(HashTable *target, HashTable *source)
{
 zend_function *function1, *function2;
 Bucket *p, *end;
 zval *t;

 zend_hash_extend(target, target->nNumUsed + source->nNumUsed, 0);
 p = source->arData;
 end = p + source->nNumUsed;
 for (; p != end; p++) {
  ZEND_ASSERT(Z_TYPE(p->val) != IS_UNDEF);
  ZEND_ASSERT(p->key);
  t = zend_hash_find_ex(target, p->key, 1);
  if (UNEXPECTED(t != ((void*)0))) {
   if (EXPECTED(ZSTR_LEN(p->key) > 0) && EXPECTED(ZSTR_VAL(p->key)[0] == 0)) {

    t = zend_hash_update(target, p->key, &p->val);
   } else {
    goto failure;
   }
  } else {
   _zend_hash_append_ptr(target, p->key, Z_PTR(p->val));
  }
 }
 target->nInternalPointer = 0;
 return;

failure:
 function1 = Z_PTR(p->val);
 function2 = Z_PTR_P(t);
 CG(in_compilation) = 1;
 zend_set_compiled_filename(function1->op_array.filename);
 CG(zend_lineno) = function1->op_array.opcodes[0].lineno;
 if (function2->type == ZEND_USER_FUNCTION
  && function2->op_array.last > 0) {
  zend_error(E_ERROR, "Cannot redeclare %s() (previously declared in %s:%d)",
       ZSTR_VAL(function1->common.function_name),
       ZSTR_VAL(function2->op_array.filename),
       (int)function2->op_array.opcodes[0].lineno);
 } else {
  zend_error(E_ERROR, "Cannot redeclare %s()", ZSTR_VAL(function1->common.function_name));
 }
}
