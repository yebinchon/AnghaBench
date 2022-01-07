
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOL ;


 scalar_t__ isspaceW (int) ;

__attribute__((used)) static inline BOOL PROFILE_isspaceW(WCHAR c)
{

 return isspaceW(c) || c == 0x1a;
}
