
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_offload {scalar_t__ timeout; } ;
struct fe_priv {int * foe_flow_table; } ;


 int HZ ;
 scalar_t__ jiffies ;
 struct flow_offload* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void mtk_offload_keepalive(struct fe_priv *eth, unsigned int hash)
{
 struct flow_offload *flow;

 rcu_read_lock();
 flow = rcu_dereference(eth->foe_flow_table[hash]);
 if (flow)
  flow->timeout = jiffies + 30 * HZ;
 rcu_read_unlock();
}
