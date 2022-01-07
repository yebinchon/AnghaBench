
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int get_system_endian()
{
 int a = 1;
 char *b = (char*)&a;
 return (int)(b[0]);
}
