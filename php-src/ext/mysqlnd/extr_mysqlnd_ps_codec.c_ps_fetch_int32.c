
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_uchar ;
typedef int MYSQLND_FIELD ;


 int ps_fetch_from_1_to_8_bytes (int *,int const* const,unsigned int const,int const**,int) ;

__attribute__((used)) static void
ps_fetch_int32(zval * zv, const MYSQLND_FIELD * const field, const unsigned int pack_len, const zend_uchar ** row)
{
 ps_fetch_from_1_to_8_bytes(zv, field, pack_len, row, 4);
}
