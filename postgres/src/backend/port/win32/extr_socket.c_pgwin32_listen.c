
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCKET ;


 int TranslateSocketError () ;
 int listen (int ,int) ;

int
pgwin32_listen(SOCKET s, int backlog)
{
 int res;

 res = listen(s, backlog);
 if (res < 0)
  TranslateSocketError();
 return res;
}
