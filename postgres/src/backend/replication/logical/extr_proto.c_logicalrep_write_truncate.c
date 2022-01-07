
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int StringInfo ;
typedef int Oid ;


 int TRUNCATE_CASCADE ;
 int TRUNCATE_RESTART_SEQS ;
 int pq_sendbyte (int ,char) ;
 int pq_sendint32 (int ,int) ;
 int pq_sendint8 (int ,int ) ;

void
logicalrep_write_truncate(StringInfo out,
        int nrelids,
        Oid relids[],
        bool cascade, bool restart_seqs)
{
 int i;
 uint8 flags = 0;

 pq_sendbyte(out, 'T');

 pq_sendint32(out, nrelids);


 if (cascade)
  flags |= TRUNCATE_CASCADE;
 if (restart_seqs)
  flags |= TRUNCATE_RESTART_SEQS;
 pq_sendint8(out, flags);

 for (i = 0; i < nrelids; i++)
  pq_sendint32(out, relids[i]);
}
