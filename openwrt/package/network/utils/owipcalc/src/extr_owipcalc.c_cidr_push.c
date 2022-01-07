
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cidr {struct cidr* next; } ;


 struct cidr* stack ;

__attribute__((used)) static void cidr_push(struct cidr *a)
{
 if (a)
 {
  a->next = stack;
  stack = a;
 }
}
