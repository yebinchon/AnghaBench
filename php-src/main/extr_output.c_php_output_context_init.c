
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; } ;
typedef TYPE_1__ php_output_context ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static inline void php_output_context_init(php_output_context *context, int op)
{
 memset(context, 0, sizeof(php_output_context));
 context->op = op;
}
