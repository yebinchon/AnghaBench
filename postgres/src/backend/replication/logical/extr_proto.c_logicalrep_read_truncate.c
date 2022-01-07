
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int StringInfo ;
typedef int List ;


 int * NIL ;
 int TRUNCATE_CASCADE ;
 int TRUNCATE_RESTART_SEQS ;
 int * lappend_oid (int *,void*) ;
 void* pq_getmsgint (int ,int) ;

List *
logicalrep_read_truncate(StringInfo in,
       bool *cascade, bool *restart_seqs)
{
 int i;
 int nrelids;
 List *relids = NIL;
 uint8 flags;

 nrelids = pq_getmsgint(in, 4);


 flags = pq_getmsgint(in, 1);
 *cascade = (flags & TRUNCATE_CASCADE) > 0;
 *restart_seqs = (flags & TRUNCATE_RESTART_SEQS) > 0;

 for (i = 0; i < nrelids; i++)
  relids = lappend_oid(relids, pq_getmsgint(in, 4));

 return relids;
}
