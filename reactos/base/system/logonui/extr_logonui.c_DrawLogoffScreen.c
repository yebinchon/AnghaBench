
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HDC ;


 int NT5_CreateLogoffScreen (char*,int ) ;

__attribute__((used)) static VOID
DrawLogoffScreen(HDC hdcMem)
{

    NT5_CreateLogoffScreen(L"Saving your settings...", hdcMem);
}
