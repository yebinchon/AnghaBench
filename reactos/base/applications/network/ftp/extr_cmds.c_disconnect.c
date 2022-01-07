
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SOCKET ;


 int command (char*) ;
 scalar_t__ connected ;
 scalar_t__ macnum ;
 int proxy ;

void disconnect(int argc, const char *argv[])
{
 extern SOCKET cout;
 extern int data;

 if (!connected)
  return;
 (void) command("QUIT");
 cout = 0;
 connected = 0;
 data = -1;
 if (!proxy) {
  macnum = 0;
 }
}
