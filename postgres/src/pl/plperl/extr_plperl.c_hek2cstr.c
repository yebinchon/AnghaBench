
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SV ;
typedef int HE ;


 int ENTER ;
 int FREETMPS ;
 int * HeSVKEY_force (int *) ;
 scalar_t__ HeUTF8 (int *) ;
 int LEAVE ;
 int SAVETMPS ;
 int SvUTF8_on (int *) ;
 int dTHX ;
 char* sv2cstr (int *) ;

__attribute__((used)) static char *
hek2cstr(HE *he)
{
 dTHX;
 char *ret;
 SV *sv;





 ENTER;
 SAVETMPS;
 sv = HeSVKEY_force(he);
 if (HeUTF8(he))
  SvUTF8_on(sv);
 ret = sv2cstr(sv);


 FREETMPS;
 LEAVE;

 return ret;
}
