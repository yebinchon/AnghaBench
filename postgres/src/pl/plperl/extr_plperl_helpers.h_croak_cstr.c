
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SV ;


 int GV_ADD ;
 int SvUTF8_on (int *) ;
 int croak (int *) ;
 int croak_sv (int ) ;
 int cstr2sv (char const*) ;
 int dTHX ;
 int * get_sv (char*,int ) ;
 int * mess (char*,char*) ;
 int pfree (char*) ;
 int sv_2mortal (int ) ;
 int sv_setsv (int *,int *) ;
 char* utf_e2u (char const*) ;

__attribute__((used)) static inline void
croak_cstr(const char *str)
{
 dTHX;
 SV *errsv = get_sv("@", GV_ADD);
 char *utf8_str = utf_e2u(str);
 SV *ssv;

 ssv = mess("%s", utf8_str);
 SvUTF8_on(ssv);

 pfree(utf8_str);

 sv_setsv(errsv, ssv);

 croak(((void*)0));

}
