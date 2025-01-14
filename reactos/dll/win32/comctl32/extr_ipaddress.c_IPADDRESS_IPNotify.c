
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int Notify; int Self; } ;
struct TYPE_5__ {int idFrom; int code; int hwndFrom; } ;
struct TYPE_6__ {void* iValue; TYPE_1__ hdr; void* iField; } ;
typedef TYPE_2__ NMIPADDRESS ;
typedef int LPARAM ;
typedef TYPE_3__ IPADDRESS_INFO ;
typedef void* INT ;


 int GWLP_ID ;
 int GetWindowLongPtrW (int ,int ) ;
 int IPN_FIELDCHANGED ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,void*,...) ;
 int WM_NOTIFY ;

__attribute__((used)) static INT IPADDRESS_IPNotify (const IPADDRESS_INFO *infoPtr, INT field, INT value)
{
    NMIPADDRESS nmip;

    TRACE("(field=%x, value=%d)\n", field, value);

    nmip.hdr.hwndFrom = infoPtr->Self;
    nmip.hdr.idFrom = GetWindowLongPtrW (infoPtr->Self, GWLP_ID);
    nmip.hdr.code = IPN_FIELDCHANGED;

    nmip.iField = field;
    nmip.iValue = value;

    SendMessageW (infoPtr->Notify, WM_NOTIFY, nmip.hdr.idFrom, (LPARAM)&nmip);

    TRACE("<-- %d\n", nmip.iValue);

    return nmip.iValue;
}
