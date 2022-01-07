
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RegProcedure ;
typedef int Oid ;
typedef int * CCHashFN ;
typedef int CCFastEqualFN ;




 int FATAL ;
 int F_BOOLEQ ;
 int F_CHAREQ ;
 int F_INT2EQ ;
 int F_INT4EQ ;
 int F_NAMEEQ ;
 int F_OIDEQ ;
 int F_OIDVECTOREQ ;
 int F_TEXTEQ ;


 int InvalidOid ;
 int chareqfast ;
 int * charhashfast ;
 int elog (int ,char*,int) ;
 int int2eqfast ;
 int * int2hashfast ;
 int int4eqfast ;
 int * int4hashfast ;
 int nameeqfast ;
 int * namehashfast ;
 int oidvectoreqfast ;
 int * oidvectorhashfast ;
 int texteqfast ;
 int * texthashfast ;

__attribute__((used)) static void
GetCCHashEqFuncs(Oid keytype, CCHashFN *hashfunc, RegProcedure *eqfunc, CCFastEqualFN *fasteqfunc)
{
 switch (keytype)
 {
  case 145:
   *hashfunc = charhashfast;
   *fasteqfunc = chareqfast;
   *eqfunc = F_BOOLEQ;
   break;
  case 144:
   *hashfunc = charhashfast;
   *fasteqfunc = chareqfast;
   *eqfunc = F_CHAREQ;
   break;
  case 141:
   *hashfunc = namehashfast;
   *fasteqfunc = nameeqfast;
   *eqfunc = F_NAMEEQ;
   break;
  case 143:
   *hashfunc = int2hashfast;
   *fasteqfunc = int2eqfast;
   *eqfunc = F_INT2EQ;
   break;
  case 142:
   *hashfunc = int4hashfast;
   *fasteqfunc = int4eqfast;
   *eqfunc = F_INT4EQ;
   break;
  case 128:
   *hashfunc = texthashfast;
   *fasteqfunc = texteqfast;
   *eqfunc = F_TEXTEQ;
   break;
  case 140:
  case 131:
  case 132:
  case 133:
  case 134:
  case 138:
  case 129:
  case 137:
  case 136:
  case 130:
  case 135:
   *hashfunc = int4hashfast;
   *fasteqfunc = int4eqfast;
   *eqfunc = F_OIDEQ;
   break;
  case 139:
   *hashfunc = oidvectorhashfast;
   *fasteqfunc = oidvectoreqfast;
   *eqfunc = F_OIDVECTOREQ;
   break;
  default:
   elog(FATAL, "type %u not supported as catcache key", keytype);
   *hashfunc = ((void*)0);

   *eqfunc = InvalidOid;
   break;
 }
}
