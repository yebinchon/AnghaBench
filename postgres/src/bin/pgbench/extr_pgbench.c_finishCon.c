
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * con; } ;
typedef TYPE_1__ CState ;


 int PQfinish (int *) ;

__attribute__((used)) static void
finishCon(CState *st)
{
 if (st->con != ((void*)0))
 {
  PQfinish(st->con);
  st->con = ((void*)0);
 }
}
