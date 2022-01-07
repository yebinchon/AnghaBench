
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int last_archived_timestamp; int last_archived_wal; int archived_count; int last_failed_timestamp; int last_failed_wal; int failed_count; } ;
struct TYPE_4__ {int m_timestamp; int m_xlog; scalar_t__ m_failed; } ;
typedef TYPE_1__ PgStat_MsgArchiver ;


 TYPE_3__ archiverStats ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
pgstat_recv_archiver(PgStat_MsgArchiver *msg, int len)
{
 if (msg->m_failed)
 {

  ++archiverStats.failed_count;
  memcpy(archiverStats.last_failed_wal, msg->m_xlog,
      sizeof(archiverStats.last_failed_wal));
  archiverStats.last_failed_timestamp = msg->m_timestamp;
 }
 else
 {

  ++archiverStats.archived_count;
  memcpy(archiverStats.last_archived_wal, msg->m_xlog,
      sizeof(archiverStats.last_archived_wal));
  archiverStats.last_archived_timestamp = msg->m_timestamp;
 }
}
