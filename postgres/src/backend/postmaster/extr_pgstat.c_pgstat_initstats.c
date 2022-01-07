
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ t_id; } ;
struct TYPE_6__ {scalar_t__ rd_id; TYPE_1__* rd_rel; TYPE_4__* pgstat_info; } ;
struct TYPE_5__ {char relkind; int relisshared; } ;
typedef TYPE_2__* Relation ;
typedef scalar_t__ Oid ;


 scalar_t__ PGINVALID_SOCKET ;
 char RELKIND_INDEX ;
 char RELKIND_MATVIEW ;
 char RELKIND_RELATION ;
 char RELKIND_SEQUENCE ;
 char RELKIND_TOASTVALUE ;
 TYPE_4__* get_tabstat_entry (scalar_t__,int ) ;
 scalar_t__ pgStatSock ;
 int pgstat_track_counts ;

void
pgstat_initstats(Relation rel)
{
 Oid rel_id = rel->rd_id;
 char relkind = rel->rd_rel->relkind;


 if (!(relkind == RELKIND_RELATION ||
    relkind == RELKIND_MATVIEW ||
    relkind == RELKIND_INDEX ||
    relkind == RELKIND_TOASTVALUE ||
    relkind == RELKIND_SEQUENCE))
 {
  rel->pgstat_info = ((void*)0);
  return;
 }

 if (pgStatSock == PGINVALID_SOCKET || !pgstat_track_counts)
 {

  rel->pgstat_info = ((void*)0);
  return;
 }





 if (rel->pgstat_info != ((void*)0) &&
  rel->pgstat_info->t_id == rel_id)
  return;


 rel->pgstat_info = get_tabstat_entry(rel_id, rel->rd_rel->relisshared);
}
