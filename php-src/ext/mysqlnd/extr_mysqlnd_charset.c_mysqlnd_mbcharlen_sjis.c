
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_uchar ;


 scalar_t__ valid_sjis_head (int ) ;

__attribute__((used)) static unsigned int mysqlnd_mbcharlen_sjis(const unsigned int sjis)
{
 return (valid_sjis_head((zend_uchar)sjis)) ? 2 : 1;
}
