
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lineno_t ;


 int eats (char const*,int ,int *,int) ;

__attribute__((used)) static void
eat(char const *name, lineno_t num)
{
 eats(name, num, ((void*)0), -1);
}
