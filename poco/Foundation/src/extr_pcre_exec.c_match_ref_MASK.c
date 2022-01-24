#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ other_case; int caseset; } ;
typedef  TYPE_1__ ucd_record ;
typedef  scalar_t__ pcre_uint32 ;
struct TYPE_7__ {scalar_t__ start_subject; scalar_t__* offset_vector; scalar_t__ end_subject; int /*<<< orphan*/  lcc; scalar_t__ utf; } ;
typedef  TYPE_2__ match_data ;
typedef  scalar_t__ PCRE_PUCHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  ucd_caseless_sets ; 

__attribute__((used)) static int
FUNC8(int offset, register PCRE_PUCHAR eptr, int length, match_data *md,
  BOOL caseless)
{
PCRE_PUCHAR eptr_start = eptr;
register PCRE_PUCHAR p = md->start_subject + md->offset_vector[offset];
#if defined SUPPORT_UTF && defined SUPPORT_UCP
BOOL utf = md->utf;
#endif

#ifdef PCRE_DEBUG
if (eptr >= md->end_subject)
  printf("matching subject <null>");
else
  {
  printf("matching subject ");
  pchars(eptr, length, TRUE, md);
  }
printf(" against backref ");
pchars(p, length, FALSE, md);
printf("\n");
#endif

/* Always fail if reference not set (and not JavaScript compatible - in that
case the length is passed as zero). */

if (length < 0) return -1;

/* Separate the caseless case for speed. In UTF-8 mode we can only do this
properly if Unicode properties are supported. Otherwise, we can check only
ASCII characters. */

if (caseless)
  {
#if defined SUPPORT_UTF && defined SUPPORT_UCP
  if (utf)
    {
    /* Match characters up to the end of the reference. NOTE: the number of
    data units matched may differ, because in UTF-8 there are some characters
    whose upper and lower case versions code have different numbers of bytes.
    For example, U+023A (2 bytes in UTF-8) is the upper case version of U+2C65
    (3 bytes in UTF-8); a sequence of 3 of the former uses 6 bytes, as does a
    sequence of two of the latter. It is important, therefore, to check the
    length along the reference, not along the subject (earlier code did this
    wrong). */

    PCRE_PUCHAR endptr = p + length;
    while (p < endptr)
      {
      pcre_uint32 c, d;
      const ucd_record *ur;
      if (eptr >= md->end_subject) return -2;   /* Partial match */
      GETCHARINC(c, eptr);
      GETCHARINC(d, p);
      ur = GET_UCD(d);
      if (c != d && c != d + ur->other_case)
        {
        const pcre_uint32 *pp = PRIV(ucd_caseless_sets) + ur->caseset;
        for (;;)
          {
          if (c < *pp) return -1;
          if (c == *pp++) break;
          }
        }
      }
    }
  else
#endif

  /* The same code works when not in UTF-8 mode and in UTF-8 mode when there
  is no UCP support. */
    {
    while (length-- > 0)
      {
      pcre_uint32 cc, cp;
      if (eptr >= md->end_subject) return -2;   /* Partial match */
      cc = FUNC5(eptr);
      cp = FUNC5(p);
      if (FUNC3(cp, md->lcc, cp) != FUNC3(cc, md->lcc, cc)) return -1;
      p++;
      eptr++;
      }
    }
  }

/* In the caseful case, we can just compare the bytes, whether or not we
are in UTF-8 mode. */

else
  {
  while (length-- > 0)
    {
    if (eptr >= md->end_subject) return -2;   /* Partial match */
    if (FUNC4(p) != FUNC4(eptr)) return -1;
    }
  }

return (int)(eptr - eptr_start);
}