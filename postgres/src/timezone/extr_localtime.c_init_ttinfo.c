
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttinfo {int tt_isdst; int tt_desigidx; int tt_ttisstd; int tt_ttisut; int tt_utoff; } ;
typedef int int32 ;



__attribute__((used)) static void
init_ttinfo(struct ttinfo *s, int32 utoff, bool isdst, int desigidx)
{
 s->tt_utoff = utoff;
 s->tt_isdst = isdst;
 s->tt_desigidx = desigidx;
 s->tt_ttisstd = 0;
 s->tt_ttisut = 0;
}
