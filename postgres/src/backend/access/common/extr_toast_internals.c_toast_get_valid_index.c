
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;
typedef int LOCKMODE ;


 int RelationGetRelid (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 int toast_close_indexes (int *,int,int ) ;
 int toast_open_indexes (int ,int ,int **,int*) ;

Oid
toast_get_valid_index(Oid toastoid, LOCKMODE lock)
{
 int num_indexes;
 int validIndex;
 Oid validIndexOid;
 Relation *toastidxs;
 Relation toastrel;


 toastrel = table_open(toastoid, lock);


 validIndex = toast_open_indexes(toastrel,
         lock,
         &toastidxs,
         &num_indexes);
 validIndexOid = RelationGetRelid(toastidxs[validIndex]);


 toast_close_indexes(toastidxs, num_indexes, lock);
 table_close(toastrel, lock);

 return validIndexOid;
}
