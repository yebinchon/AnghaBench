
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int phar_archive_data ;


 int phar_get_pharfp (int *) ;
 int php_stream_read (int ,char*,size_t) ;

__attribute__((used)) static ssize_t phar_zend_stream_reader(void *handle, char *buf, size_t len)
{
 return php_stream_read(phar_get_pharfp((phar_archive_data*)handle), buf, len);
}
