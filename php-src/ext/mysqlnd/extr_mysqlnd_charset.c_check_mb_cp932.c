
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_uchar ;


 scalar_t__ valid_cp932head (int ) ;
 scalar_t__ valid_cp932tail (int ) ;

__attribute__((used)) static unsigned int check_mb_cp932(const char * const start, const char * const end)
{
 return (valid_cp932head((zend_uchar)start[0]) && (end - start > 1) &&
   valid_cp932tail((zend_uchar)start[1])) ? 2 : 0;
}
