
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t (* reader ) (int ,char*,size_t) ;int handle; scalar_t__ isatty; } ;
struct TYPE_7__ {TYPE_1__ stream; } ;
struct TYPE_8__ {TYPE_2__ handle; } ;
typedef TYPE_3__ zend_file_handle ;
typedef size_t ssize_t ;


 int EOF ;
 size_t stub1 (int ,char*,size_t) ;
 int zend_stream_getc (TYPE_3__*) ;

__attribute__((used)) static ssize_t zend_stream_read(zend_file_handle *file_handle, char *buf, size_t len)
{
 if (file_handle->handle.stream.isatty) {
  int c = '*';
  size_t n;

  for (n = 0; n < len && (c = zend_stream_getc(file_handle)) != EOF && c != '\n'; ++n) {
   buf[n] = (char)c;
  }
  if (c == '\n') {
   buf[n++] = (char)c;
  }

  return n;
 }
 return file_handle->handle.stream.reader(file_handle->handle.stream.handle, buf, len);
}
