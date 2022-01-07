
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int php_output_handler_status_t ;
struct TYPE_3__ {int flags; int level; } ;
typedef TYPE_1__ php_output_handler ;
typedef int php_output_context ;


 int PHP_OUTPUT_HANDLER_DISABLED ;



 int php_output_context_pass (int *) ;
 int php_output_context_swap (int *) ;
 int php_output_handler_op (TYPE_1__*,int *) ;

__attribute__((used)) static int php_output_stack_apply_op(void *h, void *c)
{
 int was_disabled;
 php_output_handler_status_t status;
 php_output_handler *handler = *(php_output_handler **) h;
 php_output_context *context = (php_output_context *) c;

 if ((was_disabled = (handler->flags & PHP_OUTPUT_HANDLER_DISABLED))) {
  status = 130;
 } else {
  status = php_output_handler_op(handler, context);
 }





 switch (status) {
  case 129:
   return 1;

  case 128:

   if (handler->level) {
    php_output_context_swap(context);
   }
   return 0;

  case 130:
  default:
   if (was_disabled) {

    if (!handler->level) {
     php_output_context_pass(context);
    }
   } else {

    if (handler->level) {
     php_output_context_swap(context);
    }
   }
   return 0;
 }
}
