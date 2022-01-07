
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int LOCKMODE ;


 int InvalidOid ;
 int mark_index_clustered (int ,int ,int) ;

__attribute__((used)) static void
ATExecDropCluster(Relation rel, LOCKMODE lockmode)
{
 mark_index_clustered(rel, InvalidOid, 0);
}
