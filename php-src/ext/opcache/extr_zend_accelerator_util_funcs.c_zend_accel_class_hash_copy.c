
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef int zval ;
struct TYPE_16__ {int line_start; int filename; } ;
struct TYPE_17__ {TYPE_1__ user; } ;
struct TYPE_18__ {int ce_flags; int name; TYPE_2__ info; } ;
typedef TYPE_3__ zend_class_entry ;
struct TYPE_20__ {int val; int key; } ;
struct TYPE_19__ {int nNumUsed; scalar_t__ nInternalPointer; TYPE_5__* arData; } ;
struct TYPE_15__ {int ignore_dups; } ;
typedef TYPE_4__ HashTable ;
typedef int CG ;
typedef TYPE_5__ Bucket ;


 scalar_t__ EXPECTED (int) ;
 int E_ERROR ;
 scalar_t__ IS_UNDEF ;
 scalar_t__ UNEXPECTED (int) ;
 TYPE_14__ ZCG (int ) ;
 int ZEND_ACC_ANON_CLASS ;
 int ZEND_ASSERT (int ) ;
 scalar_t__ ZSTR_LEN (int ) ;
 scalar_t__* ZSTR_VAL (int ) ;
 TYPE_3__* Z_PTR (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 int * _zend_hash_append_ptr (TYPE_4__*,int ,TYPE_3__*) ;
 int accel_directives ;
 int zend_error (int ,char*,int ,scalar_t__*) ;
 int zend_get_object_type (TYPE_3__*) ;
 int zend_hash_extend (TYPE_4__*,int,int ) ;
 int * zend_hash_find_ex (TYPE_4__*,int ,int) ;
 int zend_set_compiled_filename (int ) ;

__attribute__((used)) static void zend_accel_class_hash_copy(HashTable *target, HashTable *source)
{
 Bucket *p, *end;
 zval *t;

 zend_hash_extend(target, target->nNumUsed + source->nNumUsed, 0);
 p = source->arData;
 end = p + source->nNumUsed;
 for (; p != end; p++) {
  if (UNEXPECTED(Z_TYPE(p->val) == IS_UNDEF)) continue;
  ZEND_ASSERT(p->key);
  t = zend_hash_find_ex(target, p->key, 1);
  if (UNEXPECTED(t != ((void*)0))) {
   if (EXPECTED(ZSTR_LEN(p->key) > 0) && EXPECTED(ZSTR_VAL(p->key)[0] == 0)) {

    continue;
   } else if (UNEXPECTED(!ZCG(accel_directives).ignore_dups)) {
    zend_class_entry *ce1 = Z_PTR(p->val);
    if (!(ce1->ce_flags & ZEND_ACC_ANON_CLASS)) {
     CG(in_compilation) = 1;
     zend_set_compiled_filename(ce1->info.user.filename);
     CG(zend_lineno) = ce1->info.user.line_start;
     zend_error(E_ERROR,
       "Cannot declare %s %s, because the name is already in use",
       zend_get_object_type(ce1), ZSTR_VAL(ce1->name));
     return;
    }
    continue;
   }
  } else {
   t = _zend_hash_append_ptr(target, p->key, Z_PTR(p->val));
  }
 }
 target->nInternalPointer = 0;
 return;
}
