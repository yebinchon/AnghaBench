
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long LENGTH ;
 int check_bytes (char*) ;
 int printf (char*,unsigned long) ;

__attribute__((used)) static int read_bytes(char *addr)
{
 unsigned long i;

 check_bytes(addr);
 for (i = 0; i < LENGTH; i++)
  if (*(addr + i) != (char)i) {
   printf("Mismatch at %lu\n", i);
   return 1;
  }
 return 0;
}
