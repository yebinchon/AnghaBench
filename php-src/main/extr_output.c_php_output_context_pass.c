
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; scalar_t__ free; scalar_t__ used; int * data; } ;
struct TYPE_6__ {scalar_t__ free; scalar_t__ size; scalar_t__ used; int * data; } ;
struct TYPE_7__ {TYPE_1__ in; TYPE_2__ out; } ;
typedef TYPE_3__ php_output_context ;



__attribute__((used)) static inline void php_output_context_pass(php_output_context *context)
{
 context->out.data = context->in.data;
 context->out.used = context->in.used;
 context->out.size = context->in.size;
 context->out.free = context->in.free;
 context->in.data = ((void*)0);
 context->in.used = 0;
 context->in.free = 0;
 context->in.size = 0;
}
