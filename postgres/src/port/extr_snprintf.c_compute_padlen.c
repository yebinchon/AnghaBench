
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
compute_padlen(int minlen, int vallen, int leftjust)
{
 int padlen;

 padlen = minlen - vallen;
 if (padlen < 0)
  padlen = 0;
 if (leftjust)
  padlen = -padlen;
 return padlen;
}
