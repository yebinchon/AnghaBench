
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 int fread (char*,int,size_t,int *) ;

__attribute__((used)) static ssize_t zend_stream_stdio_reader(void *handle, char *buf, size_t len)
{
 return fread(buf, 1, len, (FILE*)handle);
}
