
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 scalar_t__ HDN_FIRST_UNICODE ;
 scalar_t__ HDN_LAST ;
 scalar_t__ HDN_UNICODE_OFFSET ;

__attribute__((used)) static UINT HEADER_NotifyCodeWtoA(UINT code)
{

    if (code >= HDN_LAST && code <= HDN_FIRST_UNICODE)
        return code + HDN_UNICODE_OFFSET;
    else
        return code;
}
