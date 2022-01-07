
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwLowDateTime; scalar_t__ dwHighDateTime; } ;
typedef int LONGLONG ;
typedef TYPE_1__ FILETIME ;
typedef int BOOL ;


 int GetSystemTimeAsFileTime (TYPE_1__*) ;
 int TRACE (char*,unsigned int,unsigned int) ;

__attribute__((used)) static BOOL is_not_current(FILETIME * ft)
{
    FILETIME Now;
    LONGLONG ftll, nowll;
    GetSystemTimeAsFileTime(&Now);
    ftll = ((LONGLONG)ft->dwHighDateTime << 32) + ft->dwLowDateTime;
    nowll = ((LONGLONG)Now.dwHighDateTime << 32) + Now.dwLowDateTime;
    TRACE("%08x;%08x\n",(unsigned)ftll+21000000,(unsigned)nowll);
    return ftll + 21000000 < nowll;
}
