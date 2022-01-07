
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int handle; scalar_t__ (* reader ) (int ,char*,int) ;} ;
struct TYPE_6__ {TYPE_1__ stream; } ;
struct TYPE_7__ {TYPE_2__ handle; } ;
typedef TYPE_3__ zend_file_handle ;
typedef int buf ;


 int EOF ;
 scalar_t__ stub1 (int ,char*,int) ;

__attribute__((used)) static int zend_stream_getc(zend_file_handle *file_handle)
{
 char buf;

 if (file_handle->handle.stream.reader(file_handle->handle.stream.handle, &buf, sizeof(buf))) {
  return (int)buf;
 }
 return EOF;
}
