
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SV ;


 int SvREFCNT_dec (int *) ;
 int dTHX ;

__attribute__((used)) static inline void
SvREFCNT_dec_current(SV *sv)
{
 dTHX;

 SvREFCNT_dec(sv);
}
