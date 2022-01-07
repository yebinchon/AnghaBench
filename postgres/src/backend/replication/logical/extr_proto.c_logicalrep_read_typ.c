
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* typname; void* nspname; int remoteid; } ;
typedef int StringInfo ;
typedef TYPE_1__ LogicalRepTyp ;


 int logicalrep_read_namespace (int ) ;
 int pq_getmsgint (int ,int) ;
 int pq_getmsgstring (int ) ;
 void* pstrdup (int ) ;

void
logicalrep_read_typ(StringInfo in, LogicalRepTyp *ltyp)
{
 ltyp->remoteid = pq_getmsgint(in, 4);


 ltyp->nspname = pstrdup(logicalrep_read_namespace(in));
 ltyp->typname = pstrdup(pq_getmsgstring(in));
}
