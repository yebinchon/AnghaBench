
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WSErrorEntry {scalar_t__ error; scalar_t__ description; } ;
typedef scalar_t__ DWORD ;


 struct WSErrorEntry* WSErrors ;
 int strcpy (char*,scalar_t__) ;

__attribute__((used)) static int
LookupWSErrorMessage(DWORD err, char *dest)
{
 struct WSErrorEntry *e;

 for (e = WSErrors; e->description; e++)
 {
  if (e->error == err)
  {
   strcpy(dest, e->description);
   return 1;
  }
 }
 return 0;
}
