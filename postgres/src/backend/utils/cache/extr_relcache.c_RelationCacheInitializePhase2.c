
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MemoryContext ;


 int AuthIdRelation_Rowtype_Id ;
 int AuthMemRelation_Rowtype_Id ;
 int CacheMemoryContext ;
 int DatabaseRelation_Rowtype_Id ;
 int Desc_pg_auth_members ;
 int Desc_pg_authid ;
 int Desc_pg_database ;
 int Desc_pg_shseclabel ;
 int Desc_pg_subscription ;
 scalar_t__ IsBootstrapProcessingMode () ;
 int MemoryContextSwitchTo (int ) ;
 int Natts_pg_auth_members ;
 int Natts_pg_authid ;
 int Natts_pg_database ;
 int Natts_pg_shseclabel ;
 int Natts_pg_subscription ;
 int RelationMapInitializePhase2 () ;
 int SharedSecLabelRelation_Rowtype_Id ;
 int SubscriptionRelation_Rowtype_Id ;
 int formrdesc (char*,int ,int,int ,int ) ;
 int load_relcache_init_file (int) ;

void
RelationCacheInitializePhase2(void)
{
 MemoryContext oldcxt;




 RelationMapInitializePhase2();





 if (IsBootstrapProcessingMode())
  return;




 oldcxt = MemoryContextSwitchTo(CacheMemoryContext);





 if (!load_relcache_init_file(1))
 {
  formrdesc("pg_database", DatabaseRelation_Rowtype_Id, 1,
      Natts_pg_database, Desc_pg_database);
  formrdesc("pg_authid", AuthIdRelation_Rowtype_Id, 1,
      Natts_pg_authid, Desc_pg_authid);
  formrdesc("pg_auth_members", AuthMemRelation_Rowtype_Id, 1,
      Natts_pg_auth_members, Desc_pg_auth_members);
  formrdesc("pg_shseclabel", SharedSecLabelRelation_Rowtype_Id, 1,
      Natts_pg_shseclabel, Desc_pg_shseclabel);
  formrdesc("pg_subscription", SubscriptionRelation_Rowtype_Id, 1,
      Natts_pg_subscription, Desc_pg_subscription);


 }

 MemoryContextSwitchTo(oldcxt);
}
