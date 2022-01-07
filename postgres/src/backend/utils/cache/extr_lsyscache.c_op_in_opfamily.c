
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int AMOPOPID ;
 int AMOP_SEARCH ;
 int CharGetDatum (int ) ;
 int ObjectIdGetDatum (int ) ;
 int SearchSysCacheExists3 (int ,int ,int ,int ) ;

bool
op_in_opfamily(Oid opno, Oid opfamily)
{
 return SearchSysCacheExists3(AMOPOPID,
         ObjectIdGetDatum(opno),
         CharGetDatum(AMOP_SEARCH),
         ObjectIdGetDatum(opfamily));
}
