
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int msg ;
typedef void* TimestampTz ;
struct TYPE_3__ {int databaseid; void* cutoff_time; void* clock_time; int m_hdr; } ;
typedef TYPE_1__ PgStat_MsgInquiry ;
typedef int Oid ;


 int PGSTAT_MTYPE_INQUIRY ;
 int pgstat_send (TYPE_1__*,int) ;
 int pgstat_setheader (int *,int ) ;

__attribute__((used)) static void
pgstat_send_inquiry(TimestampTz clock_time, TimestampTz cutoff_time, Oid databaseid)
{
 PgStat_MsgInquiry msg;

 pgstat_setheader(&msg.m_hdr, PGSTAT_MTYPE_INQUIRY);
 msg.clock_time = clock_time;
 msg.cutoff_time = cutoff_time;
 msg.databaseid = databaseid;
 pgstat_send(&msg, sizeof(msg));
}
