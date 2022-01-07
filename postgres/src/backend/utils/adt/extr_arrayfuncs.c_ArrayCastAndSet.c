
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int Assert (int) ;
 int DatumGetPointer (int ) ;
 int att_addlength_datum (int ,int,int ) ;
 int att_align_nominal (int,char) ;
 int memmove (char*,int ,int) ;
 int store_att_byval (char*,int ,int) ;

__attribute__((used)) static int
ArrayCastAndSet(Datum src,
    int typlen,
    bool typbyval,
    char typalign,
    char *dest)
{
 int inc;

 if (typlen > 0)
 {
  if (typbyval)
   store_att_byval(dest, src, typlen);
  else
   memmove(dest, DatumGetPointer(src), typlen);
  inc = att_align_nominal(typlen, typalign);
 }
 else
 {
  Assert(!typbyval);
  inc = att_addlength_datum(0, typlen, src);
  memmove(dest, DatumGetPointer(src), inc);
  inc = att_align_nominal(inc, typalign);
 }

 return inc;
}
