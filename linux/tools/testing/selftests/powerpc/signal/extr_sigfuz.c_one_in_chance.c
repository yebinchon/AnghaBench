
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rand () ;

__attribute__((used)) static int one_in_chance(int x)
{
 return rand() % x == 0;
}
