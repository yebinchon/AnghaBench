
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_stream ;


 int php_stream_close (int *) ;

__attribute__((used)) static void php_zend_stream_closer(void *handle)
{
 php_stream_close((php_stream*)handle);
}
