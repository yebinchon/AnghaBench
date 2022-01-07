
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {TYPE_1__* parts; } ;
struct TYPE_4__ {int text; } ;
typedef TYPE_2__ STATUS_INFO ;
typedef scalar_t__* LPWSTR ;
typedef scalar_t__ INT ;


 int TRACE (char*) ;
 int memcpy (scalar_t__*,int ,scalar_t__) ;
 int strcpyW (scalar_t__*,int ) ;
 scalar_t__ strlenW (int ) ;

__attribute__((used)) static INT
STATUSBAR_WMGetText (const STATUS_INFO *infoPtr, INT size, LPWSTR buf)
{
    INT len;

    TRACE("\n");
    if (!(infoPtr->parts[0].text))
        return 0;

    len = strlenW (infoPtr->parts[0].text);

    if (!size)
        return len;
    else if (size > len) {
        strcpyW (buf, infoPtr->parts[0].text);
 return len;
    }
    else {
        memcpy (buf, infoPtr->parts[0].text, (size - 1) * sizeof(WCHAR));
        buf[size - 1] = 0;
        return size - 1;
    }
}
