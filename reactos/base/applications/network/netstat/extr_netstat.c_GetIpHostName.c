
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nIpAddr ;
typedef int UINT ;
typedef char* PCHAR ;
typedef int INT ;
typedef char CHAR ;
typedef scalar_t__ BOOL ;


 int DoFormatMessage (int ) ;
 int WSAGetLastError () ;
 scalar_t__ bDoShowNumbers ;
 scalar_t__ gethostname (char*,int ) ;
 int htonl (int) ;
 int sprintf (char*,char*,int,int,int,int) ;
 int strncpy (char*,char*,int) ;

PCHAR
GetIpHostName(BOOL Local, UINT IpAddr, CHAR Name[], INT NameLen)
{

    UINT nIpAddr;


    nIpAddr = htonl(IpAddr);
    if (bDoShowNumbers) {
        sprintf(Name, "%d.%d.%d.%d",
            (nIpAddr >> 24) & 0xFF,
            (nIpAddr >> 16) & 0xFF,
            (nIpAddr >> 8) & 0xFF,
            (nIpAddr) & 0xFF);
        return Name;
    }

    Name[0] = '\0';


    if (!IpAddr) {
        if (!Local) {
            sprintf(Name, "%d.%d.%d.%d",
                (nIpAddr >> 24) & 0xFF,
                (nIpAddr >> 16) & 0xFF,
                (nIpAddr >> 8) & 0xFF,
                (nIpAddr) & 0xFF);
        } else {
            if (gethostname(Name, NameLen) != 0)
                DoFormatMessage(WSAGetLastError());
        }
    } else if (IpAddr == 0x0100007f) {
        if (Local) {
            if (gethostname(Name, NameLen) != 0)
                DoFormatMessage(WSAGetLastError());
        } else {
            strncpy(Name, "localhost", 10);
        }


    } else {
        sprintf(Name, "%d.%d.%d.%d",
            ((nIpAddr >> 24) & 0x000000FF),
            ((nIpAddr >> 16) & 0x000000FF),
            ((nIpAddr >> 8) & 0x000000FF),
            ((nIpAddr) & 0x000000FF));
    }
    return Name;
}
