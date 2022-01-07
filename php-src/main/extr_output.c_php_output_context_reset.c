
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int op; } ;
typedef TYPE_1__ php_output_context ;


 int memset (TYPE_1__*,int ,int) ;
 int php_output_context_dtor (TYPE_1__*) ;

__attribute__((used)) static inline void php_output_context_reset(php_output_context *context)
{
 int op = context->op;
 php_output_context_dtor(context);
 memset(context, 0, sizeof(php_output_context));
 context->op = op;
}
