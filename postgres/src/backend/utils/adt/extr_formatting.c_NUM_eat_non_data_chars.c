
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * inout_p; } ;
typedef TYPE_1__ NUMProc ;


 scalar_t__ OVERLOAD_TEST ;
 int pg_mblen (int *) ;
 int * strchr (char*,int ) ;

__attribute__((used)) static void
NUM_eat_non_data_chars(NUMProc *Np, int n, int input_len)
{
 while (n-- > 0)
 {
  if (OVERLOAD_TEST)
   break;
  if (strchr("0123456789.,+-", *Np->inout_p) != ((void*)0))
   break;
  Np->inout_p += pg_mblen(Np->inout_p);
 }
}
