
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int s_name; } ;
typedef int WORD ;
typedef scalar_t__ UINT ;
typedef int PCSTR ;
typedef int * PCHAR ;
typedef int INT ;
typedef int CHAR ;


 scalar_t__ bDoShowNumbers ;
 struct servent* getservbyport (scalar_t__,int ) ;
 int htons (int ) ;
 int sprintf (int *,char*,int) ;
 int strcpy (int *,int ) ;

PCHAR
GetPortName(UINT Port, PCSTR Proto, CHAR Name[], INT NameLen)
{
    struct servent *pServent;

    if (bDoShowNumbers)
    {
        sprintf(Name, "%d", htons((WORD)Port));
        return Name;
    }

    if ((pServent = getservbyport(Port, Proto)))
        strcpy(Name, pServent->s_name );
    else
        sprintf(Name, "%d", htons((WORD)Port));
    return Name;
}
