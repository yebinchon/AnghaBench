
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ size; scalar_t__ free; scalar_t__ used; int * data; } ;
struct TYPE_5__ {scalar_t__ size; scalar_t__ free; scalar_t__ used; int * data; } ;
struct TYPE_7__ {TYPE_2__ out; TYPE_1__ in; } ;
typedef TYPE_3__ php_output_context ;


 int efree (int *) ;

__attribute__((used)) static inline void php_output_context_swap(php_output_context *context)
{
 if (context->in.free && context->in.data) {
  efree(context->in.data);
 }
 context->in.data = context->out.data;
 context->in.used = context->out.used;
 context->in.free = context->out.free;
 context->in.size = context->out.size;
 context->out.data = ((void*)0);
 context->out.used = 0;
 context->out.free = 0;
 context->out.size = 0;
}
