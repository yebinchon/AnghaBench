
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Key; } ;
typedef int * PVOID ;
typedef TYPE_1__* PINFCACHELINE ;
typedef int PCHAR ;


 int * FrLdrTempAlloc (scalar_t__,int ) ;
 int TAG_INF_KEY ;
 int strcpy (int *,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static
PVOID
InfpAddKeyToLine(
    PINFCACHELINE Line,
    PCHAR Key)
{
    if (Line == ((void*)0))
        return ((void*)0);

    if (Line->Key != ((void*)0))
        return ((void*)0);

    Line->Key = FrLdrTempAlloc(strlen(Key) + 1, TAG_INF_KEY);
    if (Line->Key == ((void*)0))
        return ((void*)0);

    strcpy(Line->Key, Key);

    return (PVOID)Line->Key;
}
