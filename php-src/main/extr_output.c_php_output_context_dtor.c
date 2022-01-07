
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * data; scalar_t__ free; } ;
struct TYPE_5__ {int * data; scalar_t__ free; } ;
struct TYPE_7__ {TYPE_2__ out; TYPE_1__ in; } ;
typedef TYPE_3__ php_output_context ;


 int efree (int *) ;

__attribute__((used)) static inline void php_output_context_dtor(php_output_context *context)
{
 if (context->in.free && context->in.data) {
  efree(context->in.data);
  context->in.data = ((void*)0);
 }
 if (context->out.free && context->out.data) {
  efree(context->out.data);
  context->out.data = ((void*)0);
 }
}
