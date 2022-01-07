
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPWSTR ;
typedef int LPSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int LPCSTR ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,int ,int,scalar_t__,int ) ;
 int WideCharToMultiByte (int ,int ,scalar_t__,int,int ,int ,int *,int *) ;
 int lstrcpynA (int ,int ,int ) ;
 int lstrcpynW (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static inline void textcpynT(LPWSTR dest, BOOL isDestW, LPCWSTR src, BOOL isSrcW, INT max)
{
    if (isDestW)
 if (isSrcW) lstrcpynW(dest, src, max);
 else MultiByteToWideChar(CP_ACP, 0, (LPCSTR)src, -1, dest, max);
    else
 if (isSrcW) WideCharToMultiByte(CP_ACP, 0, src, -1, (LPSTR)dest, max, ((void*)0), ((void*)0));
 else lstrcpynA((LPSTR)dest, (LPCSTR)src, max);
}
