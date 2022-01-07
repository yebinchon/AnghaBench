
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int pt ;
typedef int VOID ;
struct TYPE_17__ {int member_1; int member_0; } ;
struct TYPE_16__ {int member_0; int member_1; } ;
struct TYPE_15__ {int member_1; int member_0; } ;
struct TYPE_14__ {int member_0; int member_1; } ;
struct TYPE_13__ {int member_1; int member_0; } ;
struct TYPE_19__ {TYPE_5__ member_4; TYPE_4__ member_3; TYPE_3__ member_2; TYPE_2__ member_1; TYPE_1__ member_0; } ;
struct TYPE_18__ {int wHour; int wMinute; int wSecond; } ;
typedef TYPE_6__ SYSTEMTIME ;
typedef TYPE_7__ POINT ;
typedef int INT ;
typedef int HDC ;
typedef scalar_t__ BOOL ;


 int BLACK_PEN ;
 int CopyMemory (TYPE_7__**,TYPE_7__**,int) ;
 int GetStockObject (int ) ;
 int Polygon (int ,TYPE_7__*,int) ;
 int RotatePoint (TYPE_7__*,int,int) ;
 int SelectObject (int ,int ) ;
 int WHITE_BRUSH ;

__attribute__((used)) static VOID
DrawHands(HDC hdc, SYSTEMTIME * pst, BOOL fChange, INT Radius)
{
     POINT pt[3][5] = { {{0, (INT)-Radius/6}, {(INT)Radius/9, 0},
      {0, (INT)Radius/1.8}, {(INT)-Radius/9, 0}, {0, (INT)-Radius/6}},
     {{0, (INT)-Radius/4.5}, {(INT)Radius/18, 0}, {0, (INT) Radius*0.89},
      {(INT)-Radius/18, 0}, {0, (INT)-Radius/4.5}},
     {{0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, (INT) Radius*0.89}} };
     INT i, iAngle[3];
     POINT ptTemp[3][5];


     SelectObject(hdc, GetStockObject(BLACK_PEN));
     SelectObject(hdc, GetStockObject(WHITE_BRUSH));

     iAngle[0] = (pst->wHour * 30) % 360 + pst->wMinute / 2;
     iAngle[1] = pst->wMinute * 6;
     iAngle[2] = pst->wSecond * 6;

     CopyMemory(ptTemp, pt, sizeof(pt));

     for (i = fChange ? 0 : 2; i < 3; i++)
     {
          RotatePoint(ptTemp[i], 5, iAngle[i]);

          Polygon(hdc, ptTemp[i], 5);
     }
}
