
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int) ;

__attribute__((used)) static int
fb(int x)
{
 printf("in fb (%d)\n", x);
 return x;
}
