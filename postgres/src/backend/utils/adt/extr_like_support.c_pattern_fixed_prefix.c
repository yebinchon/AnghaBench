
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int constbyval; int constisnull; int constlen; int constvalue; int constcollid; int consttypmod; int consttype; } ;
typedef double Selectivity ;
typedef int Pattern_Type ;
typedef int Pattern_Prefix_Status ;
typedef int Oid ;
typedef TYPE_1__ Const ;


 int ERROR ;
 int Pattern_Prefix_None ;
 int Pattern_Prefix_Partial ;





 int datumCopy (int ,int ,int ) ;
 int elog (int ,char*,int) ;
 int like_fixed_prefix (TYPE_1__*,int,int ,TYPE_1__**,double*) ;
 TYPE_1__* makeConst (int ,int ,int ,int ,int ,int ,int ) ;
 int regex_fixed_prefix (TYPE_1__*,int,int ,TYPE_1__**,double*) ;

__attribute__((used)) static Pattern_Prefix_Status
pattern_fixed_prefix(Const *patt, Pattern_Type ptype, Oid collation,
      Const **prefix, Selectivity *rest_selec)
{
 Pattern_Prefix_Status result;

 switch (ptype)
 {
  case 132:
   result = like_fixed_prefix(patt, 0, collation,
            prefix, rest_selec);
   break;
  case 131:
   result = like_fixed_prefix(patt, 1, collation,
            prefix, rest_selec);
   break;
  case 129:
   result = regex_fixed_prefix(patt, 0, collation,
          prefix, rest_selec);
   break;
  case 128:
   result = regex_fixed_prefix(patt, 1, collation,
          prefix, rest_selec);
   break;
  case 130:

   result = Pattern_Prefix_Partial;
   *rest_selec = 1.0;
   *prefix = makeConst(patt->consttype,
        patt->consttypmod,
        patt->constcollid,
        patt->constlen,
        datumCopy(patt->constvalue,
            patt->constbyval,
            patt->constlen),
        patt->constisnull,
        patt->constbyval);
   break;
  default:
   elog(ERROR, "unrecognized ptype: %d", (int) ptype);
   result = Pattern_Prefix_None;
   break;
 }
 return result;
}
