
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SMgrRelation ;
typedef int RelFileNode ;
typedef scalar_t__ ForkNumber ;


 int InvalidBackendId ;
 scalar_t__ MAX_FORKNUM ;
 int XLogDropRelation (int ,scalar_t__) ;
 int * palloc (int) ;
 int pfree (int *) ;
 int smgrclose (int ) ;
 int smgrdounlinkall (int *,int,int) ;
 int smgropen (int ,int ) ;

void
DropRelationFiles(RelFileNode *delrels, int ndelrels, bool isRedo)
{
 SMgrRelation *srels;
 int i;

 srels = palloc(sizeof(SMgrRelation) * ndelrels);
 for (i = 0; i < ndelrels; i++)
 {
  SMgrRelation srel = smgropen(delrels[i], InvalidBackendId);

  if (isRedo)
  {
   ForkNumber fork;

   for (fork = 0; fork <= MAX_FORKNUM; fork++)
    XLogDropRelation(delrels[i], fork);
  }
  srels[i] = srel;
 }

 smgrdounlinkall(srels, ndelrels, isRedo);

 for (i = 0; i < ndelrels; i++)
  smgrclose(srels[i]);
 pfree(srels);
}
