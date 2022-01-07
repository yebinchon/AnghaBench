
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16 ;
typedef int int32 ;
typedef int WordEntryPos ;
struct TYPE_8__ {int haspos; } ;
typedef TYPE_1__ WordEntry ;
struct TYPE_9__ {int npos; } ;
typedef int TSVector ;


 int LIMITPOS (int) ;
 int MAXENTRYPOS ;
 int MAXNUMPOS ;
 int POSDATALEN (int ,TYPE_1__*) ;
 int * POSDATAPTR (int ,TYPE_1__*) ;
 int WEP_GETPOS (int ) ;
 int WEP_GETWEIGHT (int ) ;
 int WEP_SETPOS (int ,int ) ;
 int WEP_SETWEIGHT (int ,int ) ;
 TYPE_4__* _POSVECPTR (int ,TYPE_1__*) ;

__attribute__((used)) static int32
add_pos(TSVector src, WordEntry *srcptr,
  TSVector dest, WordEntry *destptr,
  int32 maxpos)
{
 uint16 *clen = &_POSVECPTR(dest, destptr)->npos;
 int i;
 uint16 slen = POSDATALEN(src, srcptr),
    startlen;
 WordEntryPos *spos = POSDATAPTR(src, srcptr),
      *dpos = POSDATAPTR(dest, destptr);

 if (!destptr->haspos)
  *clen = 0;

 startlen = *clen;
 for (i = 0;
   i < slen && *clen < MAXNUMPOS &&
   (*clen == 0 || WEP_GETPOS(dpos[*clen - 1]) != MAXENTRYPOS - 1);
   i++)
 {
  WEP_SETWEIGHT(dpos[*clen], WEP_GETWEIGHT(spos[i]));
  WEP_SETPOS(dpos[*clen], LIMITPOS(WEP_GETPOS(spos[i]) + maxpos));
  (*clen)++;
 }

 if (*clen != startlen)
  destptr->haspos = 1;
 return *clen - startlen;
}
