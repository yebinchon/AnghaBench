
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int printf (char*,char const*,int,int,int) ;

__attribute__((used)) static void print_size(const char *label, uint32_t val)
{
 printf("%s cache size: %#10x %10dB %10dK\n", label, val, val, val / 1024);
}
