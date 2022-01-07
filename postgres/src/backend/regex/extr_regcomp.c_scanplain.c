
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int * now; } ;
typedef int chr ;


 int CCLASS ;
 int COLLEL ;
 int ECLASS ;
 int END ;
 scalar_t__ ISERR () ;
 int NEXT () ;
 int PLAIN ;
 scalar_t__ SEE (int ) ;
 int assert (int) ;

__attribute__((used)) static const chr *
scanplain(struct vars *v)
{
 const chr *endp;

 assert(SEE(COLLEL) || SEE(ECLASS) || SEE(CCLASS));
 NEXT();

 endp = v->now;
 while (SEE(PLAIN))
 {
  endp = v->now;
  NEXT();
 }

 assert(SEE(END) || ISERR());
 NEXT();

 return endp;
}
