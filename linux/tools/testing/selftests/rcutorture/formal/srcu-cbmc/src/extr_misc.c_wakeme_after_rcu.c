
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {int dummy; } ;


 int BUG () ;

void wakeme_after_rcu(struct rcu_head *head)
{
 BUG();
}
