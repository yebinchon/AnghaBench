
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;
 int MAKEWORD (int,int) ;
 int TRUE ;
 int WSACleanup () ;
 int WSAData ;
 int WSAStartup (int ,int *) ;
 scalar_t__ init ;
 int tirpc_report (char*) ;

BOOL winsock_init(void)
{
 int err;
 err = WSAStartup(MAKEWORD( 3, 3 ), &WSAData);
 if (err != 0) {
  init = 0;
  tirpc_report(L"WSAStartup failed!\n");
  WSACleanup();
  return FALSE;
 }
 return TRUE;
}
