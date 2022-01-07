
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_off_t ;
typedef int zend_long ;
typedef int php_stream ;


 int SEEK_CUR ;
 scalar_t__ php_read2 (int *) ;
 int php_stream_seek (int *,int ,int ) ;

__attribute__((used)) static int php_skip_variable(php_stream * stream)
{
 zend_off_t length = ((unsigned int)php_read2(stream));

 if (length < 2) {
  return 0;
 }
 length = length - 2;
 php_stream_seek(stream, (zend_long)length, SEEK_CUR);
 return 1;
}
