
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SRLerrorout (char*,char*) ;
 scalar_t__ gh (char*,int) ;
 int isxdigit (int ) ;

int checksum(char *cp,int count)
{
  char *scp;
  int cksum;
  int dum;

  scp=cp;
  while(*scp)
  {
    if (!isxdigit(*scp++))
      return(SRLerrorout("Invalid hex digits",cp));
  }
  scp=cp;

  cksum=count;

  while(count)
  {
    cksum += gh(scp,2);
    if (count == 2)
        dum = ~cksum;
    scp += 2;
    count--;
  }
  cksum&=0x0ff;

  return(cksum==0x0ff);
}
