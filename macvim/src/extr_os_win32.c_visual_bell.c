
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_5__ {int member_1; int member_0; } ;
typedef int * LPWORD ;
typedef int DWORD ;
typedef TYPE_1__ COORD ;


 int Columns ;
 int FillConsoleOutputAttribute (int ,int,int,TYPE_1__,int *) ;
 int ReadConsoleOutputAttribute (int ,int *,int,TYPE_1__,int *) ;
 int Rows ;
 int Sleep (int) ;
 int WriteConsoleOutputAttribute (int ,int *,int,TYPE_1__,int *) ;
 int alloc (int) ;
 int g_attrCurrent ;
 int g_hConOut ;
 int vim_free (int *) ;

__attribute__((used)) static void
visual_bell(void)
{
    COORD coordOrigin = {0, 0};
    WORD attrFlash = ~g_attrCurrent & 0xff;

    DWORD dwDummy;
    LPWORD oldattrs = (LPWORD)alloc(Rows * Columns * sizeof(WORD));

    if (oldattrs == ((void*)0))
 return;
    ReadConsoleOutputAttribute(g_hConOut, oldattrs, Rows * Columns,
          coordOrigin, &dwDummy);
    FillConsoleOutputAttribute(g_hConOut, attrFlash, Rows * Columns,
          coordOrigin, &dwDummy);

    Sleep(15);
    WriteConsoleOutputAttribute(g_hConOut, oldattrs, Rows * Columns,
    coordOrigin, &dwDummy);
    vim_free(oldattrs);
}
