
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_uchar ;


 scalar_t__ valid_cp932head (int ) ;

__attribute__((used)) static unsigned int mysqlnd_mbcharlen_cp932(const unsigned int cp932)
{
 return (valid_cp932head((zend_uchar)cp932)) ? 2 : 1;
}
