
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bytea ;
typedef int Datum ;
typedef int Const ;


 int BYTEAOID ;
 int InvalidOid ;
 int PointerGetDatum (int *) ;
 int SET_VARSIZE (int *,scalar_t__) ;
 int VARDATA (int *) ;
 scalar_t__ VARHDRSZ ;
 int * makeConst (int ,int,int ,int,int ,int,int) ;
 int memcpy (int ,char const*,size_t) ;
 int * palloc (scalar_t__) ;

__attribute__((used)) static Const *
string_to_bytea_const(const char *str, size_t str_len)
{
 bytea *bstr = palloc(VARHDRSZ + str_len);
 Datum conval;

 memcpy(VARDATA(bstr), str, str_len);
 SET_VARSIZE(bstr, VARHDRSZ + str_len);
 conval = PointerGetDatum(bstr);

 return makeConst(BYTEAOID, -1, InvalidOid, -1, conval, 0, 0);
}
