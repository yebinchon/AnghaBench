
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int LOCKMODE ;


 int index_close (int ,int ) ;
 int pfree (int *) ;

void
vac_close_indexes(int nindexes, Relation *Irel, LOCKMODE lockmode)
{
 if (Irel == ((void*)0))
  return;

 while (nindexes--)
 {
  Relation ind = Irel[nindexes];

  index_close(ind, lockmode);
 }
 pfree(Irel);
}
