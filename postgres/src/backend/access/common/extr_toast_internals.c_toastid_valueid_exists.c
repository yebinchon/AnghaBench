
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;


 int AccessShareLock ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 int toastrel_valueid_exists (int ,int ) ;

__attribute__((used)) static bool
toastid_valueid_exists(Oid toastrelid, Oid valueid)
{
 bool result;
 Relation toastrel;

 toastrel = table_open(toastrelid, AccessShareLock);

 result = toastrel_valueid_exists(toastrel, valueid);

 table_close(toastrel, AccessShareLock);

 return result;
}
