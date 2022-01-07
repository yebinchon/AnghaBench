
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int CheckDateTokenTable (char*,int ,int ) ;
 scalar_t__ POSTGRES_EPOCH_JDATE ;
 scalar_t__ UNIX_EPOCH_JDATE ;
 scalar_t__ date2j (int,int,int) ;
 int datetktbl ;
 int deltatktbl ;
 int szdatetktbl ;
 int szdeltatktbl ;

bool
CheckDateTokenTables(void)
{
 bool ok = 1;

 Assert(UNIX_EPOCH_JDATE == date2j(1970, 1, 1));
 Assert(POSTGRES_EPOCH_JDATE == date2j(2000, 1, 1));

 ok &= CheckDateTokenTable("datetktbl", datetktbl, szdatetktbl);
 ok &= CheckDateTokenTable("deltatktbl", deltatktbl, szdeltatktbl);
 return ok;
}
