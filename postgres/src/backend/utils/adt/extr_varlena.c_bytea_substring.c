
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bytea ;
typedef int Datum ;


 int * DatumGetByteaPSlice (int ,int,int) ;
 int ERRCODE_SUBSTRING_ERROR ;
 int ERROR ;
 int Max (int,int) ;
 int * PG_STR_GET_BYTEA (char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static bytea *
bytea_substring(Datum str,
    int S,
    int L,
    bool length_not_specified)
{
 int S1;
 int L1;

 S1 = Max(S, 1);

 if (length_not_specified)
 {




  L1 = -1;
 }
 else
 {

  int E = S + L;





  if (E < S)
   ereport(ERROR,
     (errcode(ERRCODE_SUBSTRING_ERROR),
      errmsg("negative substring length not allowed")));






  if (E < 1)
   return PG_STR_GET_BYTEA("");

  L1 = E - S1;
 }






 return DatumGetByteaPSlice(str, S1 - 1, L1);
}
