
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * hGreyPen; int cyClient; int cxClient; int * hGreyBrush; } ;
struct TYPE_5__ {int x; int y; } ;
typedef TYPE_1__ POINT ;
typedef TYPE_2__* PCLOCKDATA ;
typedef int INT ;
typedef int * HPEN ;
typedef int HDC ;
typedef int * HBRUSH ;


 int BLACK_PEN ;
 int Ellipse (int ,int,int,int,int) ;
 int * GetCurrentObject (int ,int ) ;
 int * GetStockObject (int ) ;
 int OBJ_PEN ;
 int RotatePoint (TYPE_1__*,int,int) ;
 int * SelectObject (int ,int *) ;
 int min (int ,int ) ;

__attribute__((used)) static INT
DrawClock(HDC hdc, PCLOCKDATA pClockData)
{
     INT iAngle,Radius;
     POINT pt[3];
     HBRUSH hBrushOld;
     HPEN hPenOld = ((void*)0);


     hBrushOld = SelectObject(hdc, pClockData->hGreyBrush);

     hPenOld = GetCurrentObject(hdc, OBJ_PEN);


     Radius = min(pClockData->cxClient,pClockData->cyClient) * 2;

     for (iAngle = 0; iAngle < 360; iAngle += 6)
     {

          pt[0].x = 0;
          pt[0].y = Radius;


          RotatePoint(pt, 1, iAngle);



          if (iAngle % 5)
          {
                pt[2].x = pt[2].y = 7;
                SelectObject(hdc, pClockData->hGreyPen);
          }
          else
          {
              pt[2].x = pt[2].y = 16;
              SelectObject(hdc, GetStockObject(BLACK_PEN));
          }

          pt[0].x -= pt[2].x / 2;
          pt[0].y -= pt[2].y / 2;

          pt[1].x = pt[0].x + pt[2].x;
          pt[1].y = pt[0].y + pt[2].y;

          Ellipse(hdc, pt[0].x, pt[0].y, pt[1].x, pt[1].y);
     }

     SelectObject(hdc, hBrushOld);
     SelectObject(hdc, hPenOld);
     return Radius;
}
