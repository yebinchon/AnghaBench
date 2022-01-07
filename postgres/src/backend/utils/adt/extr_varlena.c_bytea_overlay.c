
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bytea ;


 int ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ;
 int ERRCODE_SUBSTRING_ERROR ;
 int ERROR ;
 int PointerGetDatum (int *) ;
 int * bytea_catenate (int *,int *) ;
 int * bytea_substring (int ,int,int,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ pg_add_s32_overflow (int,int,int*) ;

__attribute__((used)) static bytea *
bytea_overlay(bytea *t1, bytea *t2, int sp, int sl)
{
 bytea *result;
 bytea *s1;
 bytea *s2;
 int sp_pl_sl;






 if (sp <= 0)
  ereport(ERROR,
    (errcode(ERRCODE_SUBSTRING_ERROR),
     errmsg("negative substring length not allowed")));
 if (pg_add_s32_overflow(sp, sl, &sp_pl_sl))
  ereport(ERROR,
    (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
     errmsg("integer out of range")));

 s1 = bytea_substring(PointerGetDatum(t1), 1, sp - 1, 0);
 s2 = bytea_substring(PointerGetDatum(t1), sp_pl_sl, -1, 1);
 result = bytea_catenate(s1, t2);
 result = bytea_catenate(result, s2);

 return result;
}
