
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_type; } ;
typedef int StatMsgType ;
typedef TYPE_1__ PgStat_MsgHdr ;



__attribute__((used)) static void
pgstat_setheader(PgStat_MsgHdr *hdr, StatMsgType mtype)
{
 hdr->m_type = mtype;
}
