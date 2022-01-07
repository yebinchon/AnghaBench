
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t (* fsizer ) (int ) ;int handle; scalar_t__ isatty; } ;
struct TYPE_6__ {TYPE_1__ stream; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ handle; } ;
typedef TYPE_3__ zend_file_handle ;


 int ZEND_ASSERT (int) ;
 scalar_t__ ZEND_HANDLE_STREAM ;
 size_t stub1 (int ) ;

__attribute__((used)) static size_t zend_stream_fsize(zend_file_handle *file_handle)
{
 ZEND_ASSERT(file_handle->type == ZEND_HANDLE_STREAM);
 if (file_handle->handle.stream.isatty) {
  return 0;
 }
 return file_handle->handle.stream.fsizer(file_handle->handle.stream.handle);
}
