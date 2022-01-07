
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCKET ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ SOCKET_ERROR ;
 int TRUE ;
 scalar_t__ send (int ,char*,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static BOOL
SendQuote(SOCKET sock, char* Quote)
{
    INT strSize = strlen(Quote);
    if (send(sock, Quote, strSize, 0) == SOCKET_ERROR)
        return FALSE;

    return TRUE;
}
