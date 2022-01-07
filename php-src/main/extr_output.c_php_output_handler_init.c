
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_5__ {int size; int data; } ;
struct TYPE_6__ {size_t size; int flags; TYPE_1__ buffer; int name; } ;
typedef TYPE_2__ php_output_handler ;


 int PHP_OUTPUT_HANDLER_INITBUF_SIZE (size_t) ;
 TYPE_2__* ecalloc (int,int) ;
 int emalloc (int ) ;
 int zend_string_copy (int *) ;

__attribute__((used)) static inline php_output_handler *php_output_handler_init(zend_string *name, size_t chunk_size, int flags)
{
 php_output_handler *handler;

 handler = ecalloc(1, sizeof(php_output_handler));
 handler->name = zend_string_copy(name);
 handler->size = chunk_size;
 handler->flags = flags;
 handler->buffer.size = PHP_OUTPUT_HANDLER_INITBUF_SIZE(chunk_size);
 handler->buffer.data = emalloc(handler->buffer.size);

 return handler;
}
