
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ php_stream_notifier ;


 scalar_t__ IS_UNDEF ;
 int ZVAL_UNDEF (int *) ;
 scalar_t__ Z_TYPE (int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void user_space_stream_notifier_dtor(php_stream_notifier *notifier)
{
 if (notifier && Z_TYPE(notifier->ptr) != IS_UNDEF) {
  zval_ptr_dtor(&notifier->ptr);
  ZVAL_UNDEF(&notifier->ptr);
 }
}
