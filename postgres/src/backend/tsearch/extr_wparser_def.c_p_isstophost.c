
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wanthost; } ;
typedef TYPE_1__ TParser ;



__attribute__((used)) static int
p_isstophost(TParser *prs)
{
 if (prs->wanthost)
 {
  prs->wanthost = 0;
  return 1;
 }
 return 0;
}
