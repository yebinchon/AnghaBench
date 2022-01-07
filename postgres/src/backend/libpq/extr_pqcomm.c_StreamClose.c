
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgsocket ;


 int closesocket (int ) ;

void
StreamClose(pgsocket sock)
{
 closesocket(sock);
}
