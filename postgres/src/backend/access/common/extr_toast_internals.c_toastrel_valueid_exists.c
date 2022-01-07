
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int AttrNumber ;


 int BTEqualStrategyNumber ;
 int F_OIDEQ ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetRelid (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SnapshotAny ;
 int systable_beginscan (int ,int ,int,int ,int,int *) ;
 int systable_endscan (int ) ;
 int * systable_getnext (int ) ;
 int toast_close_indexes (int *,int,int ) ;
 int toast_open_indexes (int ,int ,int **,int*) ;

__attribute__((used)) static bool
toastrel_valueid_exists(Relation toastrel, Oid valueid)
{
 bool result = 0;
 ScanKeyData toastkey;
 SysScanDesc toastscan;
 int num_indexes;
 int validIndex;
 Relation *toastidxs;


 validIndex = toast_open_indexes(toastrel,
         RowExclusiveLock,
         &toastidxs,
         &num_indexes);




 ScanKeyInit(&toastkey,
    (AttrNumber) 1,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(valueid));




 toastscan = systable_beginscan(toastrel,
           RelationGetRelid(toastidxs[validIndex]),
           1, SnapshotAny, 1, &toastkey);

 if (systable_getnext(toastscan) != ((void*)0))
  result = 1;

 systable_endscan(toastscan);


 toast_close_indexes(toastidxs, num_indexes, RowExclusiveLock);

 return result;
}
