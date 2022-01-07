
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int * DatumGetName (int ) ;
 int NAMEDATALEN ;
 char* NameStr (int ) ;
 scalar_t__ strncmp (char*,char*,int ) ;

__attribute__((used)) static bool
nameeqfast(Datum a, Datum b)
{
 char *ca = NameStr(*DatumGetName(a));
 char *cb = NameStr(*DatumGetName(b));

 return strncmp(ca, cb, NAMEDATALEN) == 0;
}
