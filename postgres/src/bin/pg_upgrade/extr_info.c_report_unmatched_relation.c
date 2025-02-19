
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int reldesc ;
struct TYPE_6__ {int nrels; TYPE_2__* rels; } ;
struct TYPE_8__ {int db_name; TYPE_1__ rel_arr; } ;
struct TYPE_7__ {scalar_t__ reloid; char* nspname; char* relname; scalar_t__ indtable; scalar_t__ toastheap; } ;
typedef TYPE_2__ RelInfo ;
typedef scalar_t__ Oid ;
typedef TYPE_3__ DbInfo ;


 int PG_WARNING ;
 char* _ (char*) ;
 int pg_log (int ,char*,scalar_t__,int ,char*) ;
 int snprintf (char*,int,char*,scalar_t__,...) ;
 int strlen (char*) ;

__attribute__((used)) static void
report_unmatched_relation(const RelInfo *rel, const DbInfo *db, bool is_new_db)
{
 Oid reloid = rel->reloid;
 char reldesc[1000];
 int i;

 snprintf(reldesc, sizeof(reldesc), "\"%s.%s\"",
    rel->nspname, rel->relname);
 if (rel->indtable)
 {
  for (i = 0; i < db->rel_arr.nrels; i++)
  {
   const RelInfo *hrel = &db->rel_arr.rels[i];

   if (hrel->reloid == rel->indtable)
   {
    snprintf(reldesc + strlen(reldesc),
       sizeof(reldesc) - strlen(reldesc),
       _(" which is an index on \"%s.%s\""),
       hrel->nspname, hrel->relname);

    rel = hrel;
    break;
   }
  }
  if (i >= db->rel_arr.nrels)
   snprintf(reldesc + strlen(reldesc),
      sizeof(reldesc) - strlen(reldesc),
      _(" which is an index on OID %u"), rel->indtable);
 }
 if (rel->toastheap)
 {
  for (i = 0; i < db->rel_arr.nrels; i++)
  {
   const RelInfo *brel = &db->rel_arr.rels[i];

   if (brel->reloid == rel->toastheap)
   {
    snprintf(reldesc + strlen(reldesc),
       sizeof(reldesc) - strlen(reldesc),
       _(" which is the TOAST table for \"%s.%s\""),
       brel->nspname, brel->relname);
    break;
   }
  }
  if (i >= db->rel_arr.nrels)
   snprintf(reldesc + strlen(reldesc),
      sizeof(reldesc) - strlen(reldesc),
      _(" which is the TOAST table for OID %u"), rel->toastheap);
 }

 if (is_new_db)
  pg_log(PG_WARNING, "No match found in old cluster for new relation with OID %u in database \"%s\": %s\n",
      reloid, db->db_name, reldesc);
 else
  pg_log(PG_WARNING, "No match found in new cluster for old relation with OID %u in database \"%s\": %s\n",
      reloid, db->db_name, reldesc);
}
