
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int replident; void* relname; void* nspname; int remoteid; } ;
typedef int StringInfo ;
typedef TYPE_1__ LogicalRepRelation ;


 int logicalrep_read_attrs (int ,TYPE_1__*) ;
 int logicalrep_read_namespace (int ) ;
 TYPE_1__* palloc (int) ;
 int pq_getmsgbyte (int ) ;
 int pq_getmsgint (int ,int) ;
 int pq_getmsgstring (int ) ;
 void* pstrdup (int ) ;

LogicalRepRelation *
logicalrep_read_rel(StringInfo in)
{
 LogicalRepRelation *rel = palloc(sizeof(LogicalRepRelation));

 rel->remoteid = pq_getmsgint(in, 4);


 rel->nspname = pstrdup(logicalrep_read_namespace(in));
 rel->relname = pstrdup(pq_getmsgstring(in));


 rel->replident = pq_getmsgbyte(in);


 logicalrep_read_attrs(in, rel);

 return rel;
}
