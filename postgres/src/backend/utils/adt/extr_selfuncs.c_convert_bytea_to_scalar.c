
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bytea ;
typedef int Datum ;


 int * DatumGetByteaPP (int ) ;
 int Min (int,int) ;
 scalar_t__ VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 double convert_one_bytea_to_scalar (unsigned char*,int,int,int) ;

__attribute__((used)) static void
convert_bytea_to_scalar(Datum value,
      double *scaledvalue,
      Datum lobound,
      double *scaledlobound,
      Datum hibound,
      double *scaledhibound)
{
 bytea *valuep = DatumGetByteaPP(value);
 bytea *loboundp = DatumGetByteaPP(lobound);
 bytea *hiboundp = DatumGetByteaPP(hibound);
 int rangelo,
    rangehi,
    valuelen = VARSIZE_ANY_EXHDR(valuep),
    loboundlen = VARSIZE_ANY_EXHDR(loboundp),
    hiboundlen = VARSIZE_ANY_EXHDR(hiboundp),
    i,
    minlen;
 unsigned char *valstr = (unsigned char *) VARDATA_ANY(valuep);
 unsigned char *lostr = (unsigned char *) VARDATA_ANY(loboundp);
 unsigned char *histr = (unsigned char *) VARDATA_ANY(hiboundp);




 rangelo = 0;
 rangehi = 255;




 minlen = Min(Min(valuelen, loboundlen), hiboundlen);
 for (i = 0; i < minlen; i++)
 {
  if (*lostr != *histr || *lostr != *valstr)
   break;
  lostr++, histr++, valstr++;
  loboundlen--, hiboundlen--, valuelen--;
 }




 *scaledvalue = convert_one_bytea_to_scalar(valstr, valuelen, rangelo, rangehi);
 *scaledlobound = convert_one_bytea_to_scalar(lostr, loboundlen, rangelo, rangehi);
 *scaledhibound = convert_one_bytea_to_scalar(histr, hiboundlen, rangelo, rangehi);
}
