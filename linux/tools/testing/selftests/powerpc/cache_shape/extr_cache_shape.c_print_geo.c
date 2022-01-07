
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int printf (char*,...) ;

__attribute__((used)) static void print_geo(const char *label, uint32_t val)
{
 uint16_t assoc;

 printf("%s line size:  %#10x       ", label, val & 0xFFFF);

 assoc = val >> 16;
 if (assoc)
  printf("%u-way", assoc);
 else
  printf("fully");

 printf(" associative\n");
}
