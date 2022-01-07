
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int caseset; scalar_t__ other_case; } ;
typedef TYPE_1__ ucd_record ;
struct TYPE_6__ {int poptions; scalar_t__ start_subject; size_t end_subject; scalar_t__ partial; int lcc; } ;
typedef TYPE_2__ match_block ;
typedef int heapframe ;
typedef size_t PCRE2_SPTR ;
typedef size_t PCRE2_SIZE ;
typedef scalar_t__ BOOL ;


 int CU2BYTES (size_t) ;
 size_t Feptr ;
 size_t Foffset_top ;
 scalar_t__* Fovector ;
 int GETCHARINC (scalar_t__,size_t) ;
 TYPE_1__* GET_UCD (scalar_t__) ;
 int PCRE2_MATCH_UNSET_BACKREF ;
 scalar_t__ PCRE2_UNSET ;
 int PCRE2_UTF ;
 scalar_t__* PRIV (int ) ;
 scalar_t__ TABLE_GET (scalar_t__,int ,scalar_t__) ;
 scalar_t__ UCHAR21INCTEST (size_t) ;
 scalar_t__ UCHAR21TEST (size_t) ;
 scalar_t__ memcmp (size_t,size_t,int ) ;
 int ucd_caseless_sets ;

__attribute__((used)) static int
match_ref(PCRE2_SIZE offset, BOOL caseless, heapframe *F, match_block *mb,
  PCRE2_SIZE *lengthptr)
{
PCRE2_SPTR p;
PCRE2_SIZE length;
PCRE2_SPTR eptr;
PCRE2_SPTR eptr_start;




if (offset >= Foffset_top || Fovector[offset] == PCRE2_UNSET)
  {
  if ((mb->poptions & PCRE2_MATCH_UNSET_BACKREF) != 0)
    {
    *lengthptr = 0;
    return 0;
    }
  else return -1;
  }



eptr = eptr_start = Feptr;
p = mb->start_subject + Fovector[offset];
length = Fovector[offset+1] - Fovector[offset];

if (caseless)
  {
    {
    for (; length > 0; length--)
      {
      uint32_t cc, cp;
      if (eptr >= mb->end_subject) return 1;
      cc = UCHAR21TEST(eptr);
      cp = UCHAR21TEST(p);
      if (TABLE_GET(cp, mb->lcc, cp) != TABLE_GET(cc, mb->lcc, cc))
        return -1;
      p++;
      eptr++;
      }
    }
  }




else
  {
  if (mb->partial != 0)
    {
    for (; length > 0; length--)
      {
      if (eptr >= mb->end_subject) return 1;
      if (UCHAR21INCTEST(p) != UCHAR21INCTEST(eptr)) return -1;
      }
    }



  else
    {
    if ((PCRE2_SIZE)(mb->end_subject - eptr) < length) return 1;
    if (memcmp(p, eptr, CU2BYTES(length)) != 0) return -1;
    eptr += length;
    }
  }

*lengthptr = eptr - eptr_start;
return 0;
}
