
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {scalar_t__ hEvent; } ;


 int CloseHandle (scalar_t__) ;
 int FlushFileBuffers (scalar_t__) ;
 scalar_t__ hLogFile ;
 TYPE_1__ olWrite ;

VOID
UninitLogging()
{
    if (hLogFile)
    {
        FlushFileBuffers(hLogFile);
        CloseHandle(hLogFile);
    }

    if (olWrite.hEvent)
    {
        CloseHandle(olWrite.hEvent);
    }
}
