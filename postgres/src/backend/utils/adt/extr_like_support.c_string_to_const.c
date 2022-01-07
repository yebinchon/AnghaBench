
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Datum ;
typedef int Const ;




 int C_COLLATION_OID ;
 int DEFAULT_COLLATION_OID ;
 int ERROR ;
 int InvalidOid ;
 int NAMEDATALEN ;



 int elog (int ,char*,int) ;
 int * makeConst (int,int,int,int,int ,int,int) ;
 int string_to_datum (char const*,int) ;

__attribute__((used)) static Const *
string_to_const(const char *str, Oid datatype)
{
 Datum conval = string_to_datum(str, datatype);
 Oid collation;
 int constlen;





 switch (datatype)
 {
  case 129:
  case 128:
  case 132:
   collation = DEFAULT_COLLATION_OID;
   constlen = -1;
   break;

  case 130:
   collation = C_COLLATION_OID;
   constlen = NAMEDATALEN;
   break;

  case 131:
   collation = InvalidOid;
   constlen = -1;
   break;

  default:
   elog(ERROR, "unexpected datatype in string_to_const: %u",
     datatype);
   return ((void*)0);
 }

 return makeConst(datatype, -1, collation, constlen,
      conval, 0, 0);
}
