
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ MAX_TIME_PRECISION ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__,char*,...) ;

int32
anytime_typmod_check(bool istz, int32 typmod)
{
 if (typmod < 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("TIME(%d)%s precision must not be negative",
      typmod, (istz ? " WITH TIME ZONE" : ""))));
 if (typmod > MAX_TIME_PRECISION)
 {
  ereport(WARNING,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("TIME(%d)%s precision reduced to maximum allowed, %d",
      typmod, (istz ? " WITH TIME ZONE" : ""),
      MAX_TIME_PRECISION)));
  typmod = MAX_TIME_PRECISION;
 }

 return typmod;
}
