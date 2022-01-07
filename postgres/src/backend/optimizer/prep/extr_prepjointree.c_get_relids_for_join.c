
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ jointree; } ;
typedef int Relids ;
typedef TYPE_1__ Query ;
typedef int Node ;


 int ERROR ;
 int elog (int ,char*,int) ;
 int * find_jointree_node_for_rel (int *,int) ;
 int get_relids_in_jointree (int *,int) ;

Relids
get_relids_for_join(Query *query, int joinrelid)
{
 Node *jtnode;

 jtnode = find_jointree_node_for_rel((Node *) query->jointree,
          joinrelid);
 if (!jtnode)
  elog(ERROR, "could not find join node %d", joinrelid);
 return get_relids_in_jointree(jtnode, 0);
}
