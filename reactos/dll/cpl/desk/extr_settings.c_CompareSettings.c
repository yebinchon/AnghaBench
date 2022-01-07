
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dmPelsWidth; scalar_t__ dmPelsHeight; scalar_t__ dmBitsPerPel; scalar_t__ dmDisplayFrequency; } ;
typedef TYPE_1__* PSETTINGS_ENTRY ;
typedef scalar_t__ DWORD ;



__attribute__((used)) static int
CompareSettings(PSETTINGS_ENTRY Entry, DWORD dmPelsWidth, DWORD dmPelsHeight,
                DWORD dmBitsPerPel, DWORD dmDisplayFrequency)
{
    if (Entry->dmPelsWidth == dmPelsWidth &&
        Entry->dmPelsHeight == dmPelsHeight &&
        Entry->dmBitsPerPel == dmBitsPerPel &&
        Entry->dmDisplayFrequency == dmDisplayFrequency)
    {
        return 0;
    }
    else
    if ((Entry->dmPelsWidth < dmPelsWidth) ||
        (Entry->dmPelsWidth == dmPelsWidth && Entry->dmPelsHeight < dmPelsHeight) ||
        (Entry->dmPelsWidth == dmPelsWidth && Entry->dmPelsHeight == dmPelsHeight &&
         Entry->dmBitsPerPel < dmBitsPerPel))
    {
        return 1;
    }
    return -1;
}
