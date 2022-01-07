
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LPRECT ;
typedef int HDC ;
typedef int COLOR_SCHEME ;
typedef int BOOL ;


 int BF_RECT ;
 int BF_SOFT ;
 int DFCS_CHECKED ;
 int DFCS_FLAT ;
 int DFCS_PUSHED ;
 int EDGE_RAISED ;
 int EDGE_SUNKEN ;
 int MyIntDrawRectEdge (int ,int ,int,int,int *) ;

__attribute__((used)) static BOOL
MyDrawFrameButton(HDC hdc, LPRECT rc, UINT uState, COLOR_SCHEME *scheme)
{
    UINT edge;
    if (uState & (DFCS_PUSHED | DFCS_CHECKED | DFCS_FLAT))
        edge = EDGE_SUNKEN;
    else
        edge = EDGE_RAISED;
    return MyIntDrawRectEdge(hdc, rc, edge, (uState & DFCS_FLAT) | BF_RECT | BF_SOFT, scheme);
}
