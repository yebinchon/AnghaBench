
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int DWORD ;


 scalar_t__ UNITS_PER_WEEK ;

__attribute__((used)) static
DWORD
LocalToGmtHour(
    LONG lLocalHour,
    LONG lBias)
{
    LONG lGmtHour;

    lGmtHour = lLocalHour + lBias;
    if (lGmtHour < 0)
        lGmtHour += UNITS_PER_WEEK;
    else if (lGmtHour > UNITS_PER_WEEK)
        lGmtHour -= UNITS_PER_WEEK;

    return (DWORD)lGmtHour;
}
