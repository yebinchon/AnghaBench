
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCWSTR ;
typedef char* LPCSTR ;


 scalar_t__ LPSTR_TEXTCALLBACKW ;
 char* debugstr_w (scalar_t__) ;

__attribute__((used)) static inline LPCSTR debugstr_txt(LPCWSTR str)
{
    if (str == LPSTR_TEXTCALLBACKW) return "(callback)";
    return debugstr_w(str);
}
