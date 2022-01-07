
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int TRUE ;
 int WSACleanup () ;

BOOL winsock_fini(void)
{
 WSACleanup();
 return TRUE;
}
