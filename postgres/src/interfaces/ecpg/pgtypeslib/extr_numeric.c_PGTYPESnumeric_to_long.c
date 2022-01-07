
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int numeric ;


 scalar_t__ ERANGE ;
 long LONG_MIN ;
 scalar_t__ PGTYPES_NUM_OVERFLOW ;
 scalar_t__ PGTYPES_NUM_UNDERFLOW ;
 char* PGTYPESnumeric_to_asc (int *,int ) ;
 scalar_t__ errno ;
 int free (char*) ;
 long strtol (char*,char**,int) ;

int
PGTYPESnumeric_to_long(numeric *nv, long *lp)
{
 char *s = PGTYPESnumeric_to_asc(nv, 0);
 char *endptr;

 if (s == ((void*)0))
  return -1;

 errno = 0;
 *lp = strtol(s, &endptr, 10);
 if (endptr == s)
 {

  free(s);
  return -1;
 }
 free(s);
 if (errno == ERANGE)
 {
  if (*lp == LONG_MIN)
   errno = PGTYPES_NUM_UNDERFLOW;
  else
   errno = PGTYPES_NUM_OVERFLOW;
  return -1;
 }
 return 0;
}
