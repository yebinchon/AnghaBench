
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;


 int ECPG_INFORMIX_EXTRA_CHARS ;
 int PGTYPEStimestamp_from_asc (char*,char**) ;
 int errno ;

int
dtcvasc(char *str, timestamp * ts)
{
 timestamp ts_tmp;
 int i;
 char **endptr = &str;

 errno = 0;
 ts_tmp = PGTYPEStimestamp_from_asc(str, endptr);
 i = errno;
 if (i)

  return i;
 if (**endptr)
 {

  return ECPG_INFORMIX_EXTRA_CHARS;
 }



 *ts = ts_tmp;

 return 0;
}
