
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SortSupport ;
typedef int * Name ;
typedef int Datum ;


 int * DatumGetName (int ) ;
 int NameStr (int ) ;
 int strlen (int ) ;
 int varstrfastcmp_locale (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
namefastcmp_locale(Datum x, Datum y, SortSupport ssup)
{
 Name arg1 = DatumGetName(x);
 Name arg2 = DatumGetName(y);

 return varstrfastcmp_locale(NameStr(*arg1), strlen(NameStr(*arg1)),
        NameStr(*arg2), strlen(NameStr(*arg2)),
        ssup);
}
