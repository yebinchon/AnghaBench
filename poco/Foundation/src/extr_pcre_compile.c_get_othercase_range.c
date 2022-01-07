
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pcre_uint32 ;


 unsigned int UCD_CASESET (scalar_t__) ;
 scalar_t__ UCD_OTHERCASE (scalar_t__) ;

__attribute__((used)) static int
get_othercase_range(pcre_uint32 *cptr, pcre_uint32 d, pcre_uint32 *ocptr,
  pcre_uint32 *odptr)
{
pcre_uint32 c, othercase, next;
unsigned int co;




for (c = *cptr; c <= d; c++)
  {
  if ((co = UCD_CASESET(c)) != 0)
    {
    *ocptr = c++;
    *cptr = c;
    return (int)co;
    }
  if ((othercase = UCD_OTHERCASE(c)) != c) break;
  }

if (c > d) return -1;





*ocptr = othercase;
next = othercase + 1;

for (++c; c <= d; c++)
  {
  if ((co = UCD_CASESET(c)) != 0 || UCD_OTHERCASE(c) != next) break;
  next++;
  }

*odptr = next - 1;
*cptr = c;
return 0;
}
