
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int txid ;


 int MAX_TXID ;

__attribute__((used)) static txid
str2txid(const char *s, const char **endp)
{
 txid val = 0;
 txid cutoff = MAX_TXID / 10;
 txid cutlim = MAX_TXID % 10;

 for (; *s; s++)
 {
  unsigned d;

  if (*s < '0' || *s > '9')
   break;
  d = *s - '0';




  if (val > cutoff || (val == cutoff && d > cutlim))
  {
   val = 0;
   break;
  }

  val = val * 10 + d;
 }
 if (endp)
  *endp = s;
 return val;
}
