
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_binary(char *buf, int len, int ind)
{
 int i;

 printf("len=%d, ind=%d, data=0x", len, ind);
 for (i = 0; i < len; ++i)
  printf("%02x", 0xff & buf[i]);
 printf("\n");
}
