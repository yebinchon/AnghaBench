
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SOCKET ;


 int close (int) ;
 int closesocket (scalar_t__) ;
 scalar_t__ connected ;
 scalar_t__ proxflag ;
 int pswitch (int) ;
 int shutdown (int,int) ;

void lostpeer(void)
{
   extern SOCKET cout;
   extern int data;

   if (connected) {
      if (cout) {
         closesocket(cout);
         cout = 0;
      }
      if (data >= 0) {
         (void) shutdown(data, 1+1);
         (void) close(data);
         data = -1;
      }
      connected = 0;
   }
   pswitch(1);
   if (connected) {
      if (cout) {
      closesocket(cout);
         cout = 0;
      }
      connected = 0;
   }
   proxflag = 0;
   pswitch(0);
}
