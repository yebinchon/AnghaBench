
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCSTR ;
typedef int BOOL ;


 scalar_t__ LPSTR_TEXTCALLBACKA ;

__attribute__((used)) static inline BOOL is_textA(LPCSTR str)
{
    return str && str != LPSTR_TEXTCALLBACKA;
}
