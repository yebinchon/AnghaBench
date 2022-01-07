
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Notify; scalar_t__ Self; } ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef TYPE_1__ IPADDRESS_INFO ;
typedef scalar_t__ HWND ;


 int GWLP_ID ;
 int GetWindowLongPtrW (scalar_t__,int ) ;
 int MAKEWPARAM (int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int ) ;
 int WM_COMMAND ;

__attribute__((used)) static LRESULT IPADDRESS_Notify (const IPADDRESS_INFO *infoPtr, UINT command)
{
    HWND hwnd = infoPtr->Self;

    TRACE("(command=%x)\n", command);

    return SendMessageW (infoPtr->Notify, WM_COMMAND,
             MAKEWPARAM (GetWindowLongPtrW (hwnd, GWLP_ID), command), (LPARAM)hwnd);
}
