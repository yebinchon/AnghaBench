
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ulong ;


 int minAND (int,int,int,int) ;

zend_ulong minXOR(zend_ulong a, zend_ulong b, zend_ulong c, zend_ulong d)
{
 return minAND(a, b, ~d, ~c) | minAND(~b, ~a, c, d);
}
