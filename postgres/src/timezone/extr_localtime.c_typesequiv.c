
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttinfo {scalar_t__ tt_utoff; scalar_t__ tt_isdst; scalar_t__ tt_ttisstd; scalar_t__ tt_ttisut; size_t tt_desigidx; } ;
struct state {int typecnt; int * chars; struct ttinfo* ttis; } ;


 scalar_t__ strcmp (int *,int *) ;

__attribute__((used)) static bool
typesequiv(const struct state *sp, int a, int b)
{
 bool result;

 if (sp == ((void*)0) ||
  a < 0 || a >= sp->typecnt ||
  b < 0 || b >= sp->typecnt)
  result = 0;
 else
 {
  const struct ttinfo *ap = &sp->ttis[a];
  const struct ttinfo *bp = &sp->ttis[b];

  result = (ap->tt_utoff == bp->tt_utoff
      && ap->tt_isdst == bp->tt_isdst
      && ap->tt_ttisstd == bp->tt_ttisstd
      && ap->tt_ttisut == bp->tt_ttisut
      && (strcmp(&sp->chars[ap->tt_desigidx],
        &sp->chars[bp->tt_desigidx])
       == 0));
 }
 return result;
}
