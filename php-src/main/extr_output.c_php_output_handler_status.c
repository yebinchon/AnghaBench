
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_4__ {scalar_t__ used; scalar_t__ size; } ;
struct TYPE_5__ {int flags; TYPE_1__ buffer; scalar_t__ size; scalar_t__ level; int name; } ;
typedef TYPE_2__ php_output_handler ;


 int ZEND_ASSERT (int ) ;
 int add_assoc_long (int *,char*,int ) ;
 int add_assoc_str (int *,char*,int ) ;
 int array_init (int *) ;
 int zend_string_copy (int ) ;

__attribute__((used)) static inline zval *php_output_handler_status(php_output_handler *handler, zval *entry)
{
 ZEND_ASSERT(entry != ((void*)0));

 array_init(entry);
 add_assoc_str(entry, "name", zend_string_copy(handler->name));
 add_assoc_long(entry, "type", (zend_long) (handler->flags & 0xf));
 add_assoc_long(entry, "flags", (zend_long) handler->flags);
 add_assoc_long(entry, "level", (zend_long) handler->level);
 add_assoc_long(entry, "chunk_size", (zend_long) handler->size);
 add_assoc_long(entry, "buffer_size", (zend_long) handler->buffer.size);
 add_assoc_long(entry, "buffer_used", (zend_long) handler->buffer.used);

 return entry;
}
