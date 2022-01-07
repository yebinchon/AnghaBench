
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int nexttype; scalar_t__ nextvalue; scalar_t__* now; int cflags; } ;
struct state {int dummy; } ;
struct cvec {int dummy; } ;
typedef scalar_t__ chr ;





 int ERR (int ) ;
 int INSIST (int,int ) ;
 int NEXT () ;
 int NOERR () ;
 int NOTE (int ) ;


 int REG_ASSERT ;
 int REG_ECOLLATE ;
 int REG_ECTYPE ;
 int REG_ERANGE ;
 int REG_ICASE ;
 int REG_UUNPORT ;
 scalar_t__ SEE (int const) ;
 struct cvec* cclass (struct vars*,scalar_t__ const*,scalar_t__ const*,int) ;
 struct cvec* eclass (struct vars*,scalar_t__,int) ;
 scalar_t__ element (struct vars*,scalar_t__ const*,scalar_t__ const*) ;
 int onechr (struct vars*,scalar_t__,struct state*,struct state*) ;
 struct cvec* range (struct vars*,scalar_t__,scalar_t__,int) ;
 scalar_t__* scanplain (struct vars*) ;
 int subcolorcvec (struct vars*,struct cvec*,struct state*,struct state*) ;

__attribute__((used)) static void
brackpart(struct vars *v,
    struct state *lp,
    struct state *rp)
{
 chr startc;
 chr endc;
 struct cvec *cv;
 const chr *startp;
 const chr *endp;
 chr c[1];


 switch (v->nexttype)
 {
  case 128:
   ERR(REG_ERANGE);
   return;
   break;
  case 129:
   c[0] = v->nextvalue;
   NEXT();

   if (!SEE(128))
   {
    onechr(v, c[0], lp, rp);
    return;
   }
   startc = element(v, c, c + 1);
   NOERR();
   break;
  case 131:
   startp = v->now;
   endp = scanplain(v);
   INSIST(startp < endp, REG_ECOLLATE);
   NOERR();
   startc = element(v, startp, endp);
   NOERR();
   break;
  case 130:
   startp = v->now;
   endp = scanplain(v);
   INSIST(startp < endp, REG_ECOLLATE);
   NOERR();
   startc = element(v, startp, endp);
   NOERR();
   cv = eclass(v, startc, (v->cflags & REG_ICASE));
   NOERR();
   subcolorcvec(v, cv, lp, rp);
   return;
   break;
  case 132:
   startp = v->now;
   endp = scanplain(v);
   INSIST(startp < endp, REG_ECTYPE);
   NOERR();
   cv = cclass(v, startp, endp, (v->cflags & REG_ICASE));
   NOERR();
   subcolorcvec(v, cv, lp, rp);
   return;
   break;
  default:
   ERR(REG_ASSERT);
   return;
   break;
 }

 if (SEE(128))
 {
  NEXT();
  switch (v->nexttype)
  {
   case 129:
   case 128:
    c[0] = v->nextvalue;
    NEXT();
    endc = element(v, c, c + 1);
    NOERR();
    break;
   case 131:
    startp = v->now;
    endp = scanplain(v);
    INSIST(startp < endp, REG_ECOLLATE);
    NOERR();
    endc = element(v, startp, endp);
    NOERR();
    break;
   default:
    ERR(REG_ERANGE);
    return;
    break;
  }
 }
 else
  endc = startc;





 if (startc != endc)
  NOTE(REG_UUNPORT);
 cv = range(v, startc, endc, (v->cflags & REG_ICASE));
 NOERR();
 subcolorcvec(v, cv, lp, rp);
}
