
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;


 int IntersectClipRect (int ,int,int,int,int) ;
 int SelectClipRgn (int ,int *) ;

__attribute__((used)) static void
nk_gdi_scissor(HDC dc, float x, float y, float w, float h)
{
    SelectClipRgn(dc, ((void*)0));
    IntersectClipRect(dc, (int)x, (int)y, (int)(x + w + 1), (int)(y + h + 1));
}
