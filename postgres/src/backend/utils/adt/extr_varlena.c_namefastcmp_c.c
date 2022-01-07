
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SortSupport ;
typedef int * Name ;
typedef int Datum ;


 int * DatumGetName (int ) ;
 int NAMEDATALEN ;
 int NameStr (int ) ;
 int strncmp (int ,int ,int ) ;

__attribute__((used)) static int
namefastcmp_c(Datum x, Datum y, SortSupport ssup)
{
 Name arg1 = DatumGetName(x);
 Name arg2 = DatumGetName(y);

 return strncmp(NameStr(*arg1), NameStr(*arg2), NAMEDATALEN);
}
