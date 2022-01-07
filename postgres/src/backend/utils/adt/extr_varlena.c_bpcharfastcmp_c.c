
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SortSupport ;
typedef scalar_t__ Datum ;
typedef int BpChar ;


 int * DatumGetBpCharPP (scalar_t__) ;
 int Min (int,int) ;
 scalar_t__ PointerGetDatum (int *) ;
 char* VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int bpchartruelen (char*,int ) ;
 int memcmp (char*,char*,int ) ;
 int pfree (int *) ;

__attribute__((used)) static int
bpcharfastcmp_c(Datum x, Datum y, SortSupport ssup)
{
 BpChar *arg1 = DatumGetBpCharPP(x);
 BpChar *arg2 = DatumGetBpCharPP(y);
 char *a1p,
      *a2p;
 int len1,
    len2,
    result;

 a1p = VARDATA_ANY(arg1);
 a2p = VARDATA_ANY(arg2);

 len1 = bpchartruelen(a1p, VARSIZE_ANY_EXHDR(arg1));
 len2 = bpchartruelen(a2p, VARSIZE_ANY_EXHDR(arg2));

 result = memcmp(a1p, a2p, Min(len1, len2));
 if ((result == 0) && (len1 != len2))
  result = (len1 < len2) ? -1 : 1;


 if (PointerGetDatum(arg1) != x)
  pfree(arg1);
 if (PointerGetDatum(arg2) != y)
  pfree(arg2);

 return result;
}
