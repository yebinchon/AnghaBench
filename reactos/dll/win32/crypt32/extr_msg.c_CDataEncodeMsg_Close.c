
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bare_content; } ;
typedef TYPE_1__* HCRYPTMSG ;
typedef TYPE_1__ CDataEncodeMsg ;


 int LocalFree (scalar_t__) ;
 scalar_t__ empty_data_content ;

__attribute__((used)) static void CDataEncodeMsg_Close(HCRYPTMSG hCryptMsg)
{
    CDataEncodeMsg *msg = hCryptMsg;

    if (msg->bare_content != empty_data_content)
        LocalFree(msg->bare_content);
}
