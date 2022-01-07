
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int OLDSERXID_MAX_PAGE ;

__attribute__((used)) static bool
OldSerXidPagePrecedesLogically(int p, int q)
{
 int diff;





 Assert(p >= 0 && p <= OLDSERXID_MAX_PAGE);
 Assert(q >= 0 && q <= OLDSERXID_MAX_PAGE);

 diff = p - q;
 if (diff >= ((OLDSERXID_MAX_PAGE + 1) / 2))
  diff -= OLDSERXID_MAX_PAGE + 1;
 else if (diff < -((int) (OLDSERXID_MAX_PAGE + 1) / 2))
  diff += OLDSERXID_MAX_PAGE + 1;
 return diff < 0;
}
