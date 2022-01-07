
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fsec_t ;


 int Assert (int) ;
 int DTERR_BAD_FORMAT ;
 scalar_t__ errno ;
 int rint (double) ;
 double strtod (char*,char**) ;

__attribute__((used)) static int
ParseFractionalSecond(char *cp, fsec_t *fsec)
{
 double frac;


 Assert(*cp == '.');
 errno = 0;
 frac = strtod(cp, &cp);

 if (*cp != '\0' || errno != 0)
  return DTERR_BAD_FORMAT;
 *fsec = rint(frac * 1000000);
 return 0;
}
