
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int curargalloc; int curargsize; char* curarg; TYPE_1__* ppp; } ;
typedef TYPE_2__ macexpstackentry_t ;
struct TYPE_4__ {scalar_t__ expanding; } ;


 int ALLOCBLOCKSIZE ;
 int assert (int) ;
 int memcpy (char*,char const*,int) ;
 char* pp_xrealloc (char*,int) ;
 TYPE_2__* top_macro () ;

__attribute__((used)) static void add_text_to_macro(const char *text, int len)
{
 macexpstackentry_t *mep = top_macro();

 assert(mep->ppp->expanding == 0);

 if(mep->curargalloc - mep->curargsize <= len+1)
 {
  char *new_curarg;
  int new_alloc = mep->curargalloc + ((ALLOCBLOCKSIZE > len+1) ? ALLOCBLOCKSIZE : len+1);
  new_curarg = pp_xrealloc(mep->curarg, new_alloc * sizeof(mep->curarg[0]));
  if(!new_curarg)
   return;
  mep->curarg = new_curarg;
  mep->curargalloc = new_alloc;
 }
 memcpy(mep->curarg + mep->curargsize, text, len);
 mep->curargsize += len;
 mep->curarg[mep->curargsize] = '\0';
}
