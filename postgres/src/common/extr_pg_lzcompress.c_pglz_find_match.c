
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
typedef size_t int16 ;
struct TYPE_4__ {char* pos; struct TYPE_4__* next; } ;
typedef TYPE_1__ PGLZ_HistEntry ;


 TYPE_1__* INVALID_ENTRY_PTR ;
 int PGLZ_MAX_MATCH ;
 TYPE_1__* hist_entries ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 size_t pglz_hist_idx (char const*,char const*,int) ;

__attribute__((used)) static inline int
pglz_find_match(int16 *hstart, const char *input, const char *end,
    int *lenp, int *offp, int good_match, int good_drop, int mask)
{
 PGLZ_HistEntry *hent;
 int16 hentno;
 int32 len = 0;
 int32 off = 0;




 hentno = hstart[pglz_hist_idx(input, end, mask)];
 hent = &hist_entries[hentno];
 while (hent != INVALID_ENTRY_PTR)
 {
  const char *ip = input;
  const char *hp = hent->pos;
  int32 thisoff;
  int32 thislen;




  thisoff = ip - hp;
  if (thisoff >= 0x0fff)
   break;
  thislen = 0;
  if (len >= 16)
  {
   if (memcmp(ip, hp, len) == 0)
   {
    thislen = len;
    ip += len;
    hp += len;
    while (ip < end && *ip == *hp && thislen < PGLZ_MAX_MATCH)
    {
     thislen++;
     ip++;
     hp++;
    }
   }
  }
  else
  {
   while (ip < end && *ip == *hp && thislen < PGLZ_MAX_MATCH)
   {
    thislen++;
    ip++;
    hp++;
   }
  }




  if (thislen > len)
  {
   len = thislen;
   off = thisoff;
  }




  hent = hent->next;





  if (hent != INVALID_ENTRY_PTR)
  {
   if (len >= good_match)
    break;
   good_match -= (good_match * good_drop) / 100;
  }
 }





 if (len > 2)
 {
  *lenp = len;
  *offp = off;
  return 1;
 }

 return 0;
}
