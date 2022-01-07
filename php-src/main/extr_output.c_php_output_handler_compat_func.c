
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* php_output_handler_func_t ) (int ,int ,char**,size_t*,int ) ;
struct TYPE_6__ {char* data; size_t used; int free; } ;
struct TYPE_7__ {int used; int data; } ;
struct TYPE_8__ {TYPE_1__ out; int op; TYPE_2__ in; } ;
typedef TYPE_3__ php_output_context ;


 int FAILURE ;
 int SUCCESS ;
 int php_output_context_pass (TYPE_3__*) ;

__attribute__((used)) static int php_output_handler_compat_func(void **handler_context, php_output_context *output_context)
{
 php_output_handler_func_t func = *(php_output_handler_func_t *) handler_context;

 if (func) {
  char *out_str = ((void*)0);
  size_t out_len = 0;

  func(output_context->in.data, output_context->in.used, &out_str, &out_len, output_context->op);

  if (out_str) {
   output_context->out.data = out_str;
   output_context->out.used = out_len;
   output_context->out.free = 1;
  } else {
   php_output_context_pass(output_context);
  }

  return SUCCESS;
 }
 return FAILURE;
}
