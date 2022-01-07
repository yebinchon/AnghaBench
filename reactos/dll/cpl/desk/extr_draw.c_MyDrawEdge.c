
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LPRECT ;
typedef int HDC ;
typedef int COLOR_SCHEME ;
typedef int BOOL ;


 int MyIntDrawRectEdge (int ,int ,int ,int ,int *) ;

BOOL
MyDrawEdge(HDC hDC, LPRECT rc, UINT edge, UINT flags, COLOR_SCHEME *scheme)
{
    return MyIntDrawRectEdge(hDC, rc, edge, flags, scheme);
}
