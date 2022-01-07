
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 int errno ;
 scalar_t__ isinf (float) ;
 double strtod (char const*,char**) ;

float
strtof(const char *nptr, char **endptr)
{
 int caller_errno = errno;
 double dresult;
 float fresult;

 errno = 0;
 dresult = strtod(nptr, endptr);
 fresult = (float) dresult;

 if (errno == 0)
 {



  if (dresult != 0 && fresult == 0)
   caller_errno = ERANGE;
  if (!isinf(dresult) && isinf(fresult))
   caller_errno = ERANGE;
 }
 else
  caller_errno = errno;

 errno = caller_errno;
 return fresult;
}
