
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOCKET_ERROR ;
 int WSAGetLastError () ;
 int fprintf (int ,char*,int) ;
 int send (int,char*,int,int ) ;
 int stdout ;

int fputSocket(int s, char *buffer, int len)
{
    int iret;
    while(len) {
        if(SOCKET_ERROR==(iret=send(s, buffer, len, 0)))
        {
            iret=WSAGetLastError ();
            fprintf(stdout,"fputcSocket: %d\n",iret);
            return 0;
        }
        else {
            return len-=iret;
        }
    }
    return 0;
}
