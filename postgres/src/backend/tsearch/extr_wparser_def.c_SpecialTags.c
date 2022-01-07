
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ignore; int token; TYPE_1__* state; } ;
struct TYPE_4__ {int lenchartoken; } ;
typedef TYPE_2__ TParser ;


 int pg_strncasecmp (int ,char*,int) ;

__attribute__((used)) static void
SpecialTags(TParser *prs)
{
 switch (prs->state->lenchartoken)
 {
  case 8:
   if (pg_strncasecmp(prs->token, "</script", 8) == 0)
    prs->ignore = 0;
   break;
  case 7:
   if (pg_strncasecmp(prs->token, "</style", 7) == 0)
    prs->ignore = 0;
   else if (pg_strncasecmp(prs->token, "<script", 7) == 0)
    prs->ignore = 1;
   break;
  case 6:
   if (pg_strncasecmp(prs->token, "<style", 6) == 0)
    prs->ignore = 1;
   break;
  default:
   break;
 }
}
