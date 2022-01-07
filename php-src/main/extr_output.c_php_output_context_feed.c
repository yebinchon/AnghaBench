
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ zend_bool ;
struct TYPE_4__ {char* data; size_t used; size_t size; scalar_t__ free; } ;
struct TYPE_5__ {TYPE_1__ in; } ;
typedef TYPE_2__ php_output_context ;


 int efree (char*) ;

__attribute__((used)) static inline void php_output_context_feed(php_output_context *context, char *data, size_t size, size_t used, zend_bool free)
{
 if (context->in.free && context->in.data) {
  efree(context->in.data);
 }
 context->in.data = data;
 context->in.used = used;
 context->in.free = free;
 context->in.size = size;
}
