
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int PqCommReadingMsg ;

void
pq_endmsgread(void)
{
 Assert(PqCommReadingMsg);

 PqCommReadingMsg = 0;
}
