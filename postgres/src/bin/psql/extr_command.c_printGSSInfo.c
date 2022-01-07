
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db; } ;


 int PQgssEncInUse (int ) ;
 char* _ (char*) ;
 int printf (char*) ;
 TYPE_1__ pset ;

__attribute__((used)) static void
printGSSInfo(void)
{
 if (!PQgssEncInUse(pset.db))
  return;

 printf(_("GSSAPI-encrypted connection\n"));
}
