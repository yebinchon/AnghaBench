
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPCWSTR ;
typedef int BOOL ;


 int * LPSTR_TEXTCALLBACKW ;

__attribute__((used)) static inline BOOL is_text(LPCWSTR text)
{
    return text != ((void*)0) && text != LPSTR_TEXTCALLBACKW;
}
