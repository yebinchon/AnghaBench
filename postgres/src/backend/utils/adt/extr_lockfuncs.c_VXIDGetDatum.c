
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vxidstr ;
typedef int LocalTransactionId ;
typedef int Datum ;
typedef int BackendId ;


 int CStringGetTextDatum (char*) ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static Datum
VXIDGetDatum(BackendId bid, LocalTransactionId lxid)
{




 char vxidstr[32];

 snprintf(vxidstr, sizeof(vxidstr), "%d/%u", bid, lxid);

 return CStringGetTextDatum(vxidstr);
}
