
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* rd_rel; } ;
struct TYPE_8__ {char relreplident; } ;
typedef int StringInfo ;
typedef TYPE_2__* Relation ;


 int RelationGetNamespace (TYPE_2__*) ;
 char* RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int logicalrep_write_attrs (int ,TYPE_2__*) ;
 int logicalrep_write_namespace (int ,int ) ;
 int pq_sendbyte (int ,char) ;
 int pq_sendint32 (int ,int ) ;
 int pq_sendstring (int ,char*) ;

void
logicalrep_write_rel(StringInfo out, Relation rel)
{
 char *relname;

 pq_sendbyte(out, 'R');


 pq_sendint32(out, RelationGetRelid(rel));


 logicalrep_write_namespace(out, RelationGetNamespace(rel));
 relname = RelationGetRelationName(rel);
 pq_sendstring(out, relname);


 pq_sendbyte(out, rel->rd_rel->relreplident);


 logicalrep_write_attrs(out, rel);
}
