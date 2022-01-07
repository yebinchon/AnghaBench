
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_long ;


 scalar_t__ PHP_RAND_MAX ;

__attribute__((used)) static int
do_rand(unsigned long *ctx)
{
 return ((*ctx = *ctx * 1103515245 + 12345) % ((u_long)PHP_RAND_MAX + 1));
}
