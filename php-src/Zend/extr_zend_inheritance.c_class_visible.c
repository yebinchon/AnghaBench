
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int filename; } ;
struct TYPE_6__ {TYPE_1__ user; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ info; } ;
typedef TYPE_3__ zend_class_entry ;
typedef int zend_bool ;


 int CG (int ) ;
 int ZEND_ASSERT (int) ;
 int ZEND_COMPILE_IGNORE_INTERNAL_CLASSES ;
 int ZEND_COMPILE_IGNORE_OTHER_FILES ;
 scalar_t__ ZEND_INTERNAL_CLASS ;
 scalar_t__ ZEND_USER_CLASS ;
 int compiled_filename ;
 int compiler_options ;

__attribute__((used)) static zend_bool class_visible(zend_class_entry *ce) {
 if (ce->type == ZEND_INTERNAL_CLASS) {
  return !(CG(compiler_options) & ZEND_COMPILE_IGNORE_INTERNAL_CLASSES);
 } else {
  ZEND_ASSERT(ce->type == ZEND_USER_CLASS);
  return !(CG(compiler_options) & ZEND_COMPILE_IGNORE_OTHER_FILES)
   || ce->info.user.filename == CG(compiled_filename);
 }
}
