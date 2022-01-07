
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ulong ;


 int maxAND (int ,int ,int ,int ) ;
 int maxOR (int ,int ,int ,int ) ;

zend_ulong maxXOR(zend_ulong a, zend_ulong b, zend_ulong c, zend_ulong d)
{
 return maxOR(0, maxAND(a, b, ~d, ~c), 0, maxAND(~b, ~a, c, d));
}
