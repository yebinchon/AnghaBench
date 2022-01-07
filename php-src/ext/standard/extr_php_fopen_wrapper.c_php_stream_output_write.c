
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int php_stream ;


 int PHPWRITE (char const*,size_t) ;

__attribute__((used)) static ssize_t php_stream_output_write(php_stream *stream, const char *buf, size_t count)
{
 PHPWRITE(buf, count);
 return count;
}
