
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int buffer ;
 int count ;
 scalar_t__ done ;
 int env ;
 int interrupt ;
 int ocount ;
 scalar_t__ setjmp (int ) ;
 int signal (int ,int ) ;
 int tick () ;

__attribute__((used)) static unsigned long
roulette()
{
 done = 0;

 (void) signal(SIGALRM, interrupt);
 count = 0;
 tick();



 while(done == 0)

  count++;

 count ^= (count>>3) ^ (count>>6) ^ ocount;
 count &= 0x7;
 ocount=count;
 buffer = (buffer<<3) ^ count;
 return buffer;

}
