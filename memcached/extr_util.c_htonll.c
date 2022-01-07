
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int mc_swap64 (int ) ;

uint64_t htonll(uint64_t val) {
   return mc_swap64(val);
}
