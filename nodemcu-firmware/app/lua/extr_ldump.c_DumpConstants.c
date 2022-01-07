
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sizek; int sizep; int source; int * p; int * k; } ;
typedef int TValue ;
typedef TYPE_1__ Proto ;
typedef int DumpState ;


 int DumpChar (int,int *) ;
 int DumpFunction (int ,int ,int *) ;
 int DumpInt (int,int *) ;
 int DumpNumber (int ,int *) ;
 int DumpString (int ,int *) ;




 int bvalue (int const*) ;
 int lua_assert (int ) ;
 int nvalue (int const*) ;
 int rawtsvalue (int const*) ;
 int ttype (int const*) ;

__attribute__((used)) static void DumpConstants(const Proto* f, DumpState* D)
{
 int i,n=f->sizek;
 DumpInt(n,D);
 for (i=0; i<n; i++)
 {
  const TValue* o=&f->k[i];
  DumpChar(ttype(o),D);
  switch (ttype(o))
  {
   case 130:
 break;
   case 131:
 DumpChar(bvalue(o),D);
 break;
   case 129:
 DumpNumber(nvalue(o),D);
 break;
   case 128:
 DumpString(rawtsvalue(o),D);
 break;
   default:
 lua_assert(0);
 break;
  }
 }
 n=f->sizep;
 DumpInt(n,D);
 for (i=0; i<n; i++) DumpFunction(f->p[i],f->source,D);
}
