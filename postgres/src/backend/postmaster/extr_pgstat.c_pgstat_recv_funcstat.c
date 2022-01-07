
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ f_self_time; scalar_t__ f_total_time; scalar_t__ f_numcalls; int f_id; } ;
struct TYPE_9__ {int m_nentries; int m_databaseid; TYPE_4__* m_entry; } ;
struct TYPE_8__ {int functions; } ;
struct TYPE_7__ {scalar_t__ f_self_time; scalar_t__ f_total_time; scalar_t__ f_numcalls; } ;
typedef TYPE_1__ PgStat_StatFuncEntry ;
typedef TYPE_2__ PgStat_StatDBEntry ;
typedef TYPE_3__ PgStat_MsgFuncstat ;
typedef TYPE_4__ PgStat_FunctionEntry ;


 int HASH_ENTER ;
 scalar_t__ hash_search (int ,void*,int ,int*) ;
 TYPE_2__* pgstat_get_db_entry (int ,int) ;

__attribute__((used)) static void
pgstat_recv_funcstat(PgStat_MsgFuncstat *msg, int len)
{
 PgStat_FunctionEntry *funcmsg = &(msg->m_entry[0]);
 PgStat_StatDBEntry *dbentry;
 PgStat_StatFuncEntry *funcentry;
 int i;
 bool found;

 dbentry = pgstat_get_db_entry(msg->m_databaseid, 1);




 for (i = 0; i < msg->m_nentries; i++, funcmsg++)
 {
  funcentry = (PgStat_StatFuncEntry *) hash_search(dbentry->functions,
               (void *) &(funcmsg->f_id),
               HASH_ENTER, &found);

  if (!found)
  {




   funcentry->f_numcalls = funcmsg->f_numcalls;
   funcentry->f_total_time = funcmsg->f_total_time;
   funcentry->f_self_time = funcmsg->f_self_time;
  }
  else
  {



   funcentry->f_numcalls += funcmsg->f_numcalls;
   funcentry->f_total_time += funcmsg->f_total_time;
   funcentry->f_self_time += funcmsg->f_self_time;
  }
 }
}
