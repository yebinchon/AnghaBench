
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_wchar ;


 scalar_t__ IS_LC1 (unsigned char) ;
 scalar_t__ IS_LC2 (unsigned char) ;
 scalar_t__ IS_LCPRV1_A_RANGE (unsigned char) ;
 scalar_t__ IS_LCPRV1_B_RANGE (unsigned char) ;
 scalar_t__ IS_LCPRV2_A_RANGE (unsigned char) ;
 scalar_t__ IS_LCPRV2_B_RANGE (unsigned char) ;
 int LCPRV1_A ;
 int LCPRV1_B ;
 int LCPRV2_A ;
 int LCPRV2_B ;

__attribute__((used)) static int
pg_wchar2mule_with_len(const pg_wchar *from, unsigned char *to, int len)
{
 int cnt = 0;

 while (len > 0 && *from)
 {
  unsigned char lb;

  lb = (*from >> 16) & 0xff;
  if (IS_LC1(lb))
  {
   *to++ = lb;
   *to++ = *from & 0xff;
   cnt += 2;
  }
  else if (IS_LC2(lb))
  {
   *to++ = lb;
   *to++ = (*from >> 8) & 0xff;
   *to++ = *from & 0xff;
   cnt += 3;
  }
  else if (IS_LCPRV1_A_RANGE(lb))
  {
   *to++ = LCPRV1_A;
   *to++ = lb;
   *to++ = *from & 0xff;
   cnt += 3;
  }
  else if (IS_LCPRV1_B_RANGE(lb))
  {
   *to++ = LCPRV1_B;
   *to++ = lb;
   *to++ = *from & 0xff;
   cnt += 3;
  }
  else if (IS_LCPRV2_A_RANGE(lb))
  {
   *to++ = LCPRV2_A;
   *to++ = lb;
   *to++ = (*from >> 8) & 0xff;
   *to++ = *from & 0xff;
   cnt += 4;
  }
  else if (IS_LCPRV2_B_RANGE(lb))
  {
   *to++ = LCPRV2_B;
   *to++ = lb;
   *to++ = (*from >> 8) & 0xff;
   *to++ = *from & 0xff;
   cnt += 4;
  }
  else
  {
   *to++ = *from & 0xff;
   cnt += 1;
  }
  from++;
  len--;
 }
 *to = 0;
 return cnt;
}
