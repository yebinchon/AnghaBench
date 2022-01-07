
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int INT ;


 int Control_RunDLLW (int ,int ,int ,int ) ;
 int GetDesktopWindow () ;
 int SW_SHOW ;

__attribute__((used)) static INT
RunControlPanel(LPCWSTR lpCmd)
{
    Control_RunDLLW(GetDesktopWindow(), 0, lpCmd, SW_SHOW);
    return 1;
}
