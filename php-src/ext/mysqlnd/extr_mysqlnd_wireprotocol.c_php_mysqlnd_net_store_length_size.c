
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ L64 (int) ;

size_t
php_mysqlnd_net_store_length_size(uint64_t length)
{
 if (length < (uint64_t) L64(251)) {
  return 1;
 }
 if (length < (uint64_t) L64(65536)) {
  return 3;
 }
 if (length < (uint64_t) L64(16777216)) {
  return 4;
 }
 return 9;
}
