
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int bmp ;
struct TYPE_9__ {int bmHeight; int bmWidth; } ;
struct TYPE_8__ {int hbmColor; int hbmMask; } ;
struct TYPE_7__ {int cy; int cx; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ ICONINFO ;
typedef int HICON ;
typedef int BOOL ;
typedef TYPE_3__ BITMAP ;


 int DeleteObject (int ) ;
 int FALSE ;
 int GetIconInfo (int ,TYPE_2__*) ;
 int GetObjectW (int ,int,TYPE_3__*) ;

__attribute__((used)) static BOOL get_icon_size( HICON handle, SIZE *size )
{
    ICONINFO info;
    BITMAP bmp;
    int ret;

    if (!GetIconInfo(handle, &info))
        return FALSE;

    ret = GetObjectW(info.hbmColor, sizeof(bmp), &bmp);
    if (ret)
    {
        size->cx = bmp.bmWidth;
        size->cy = bmp.bmHeight;
    }

    DeleteObject(info.hbmMask);
    DeleteObject(info.hbmColor);

    return !!ret;
}
