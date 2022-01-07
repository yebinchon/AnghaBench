
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_uchar ;


 scalar_t__ valid_sjis_head (int ) ;
 scalar_t__ valid_sjis_tail (int ) ;

__attribute__((used)) static unsigned int check_mb_sjis(const char * const start, const char * const end)
{
 return (valid_sjis_head((zend_uchar)start[0]) && (end - start) > 1 && valid_sjis_tail((zend_uchar)start[1])) ? 2 : 0;
}
