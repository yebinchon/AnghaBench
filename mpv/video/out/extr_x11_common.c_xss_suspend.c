
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Display ;
typedef int Bool ;


 scalar_t__ True ;
 scalar_t__ XScreenSaverQueryExtension (int *,int*,int*) ;
 scalar_t__ XScreenSaverQueryVersion (int *,int*,int*) ;
 int XScreenSaverSuspend (int *,int ) ;

__attribute__((used)) static int xss_suspend(Display *mDisplay, Bool suspend)
{
    int event, error, major, minor;
    if (XScreenSaverQueryExtension(mDisplay, &event, &error) != True ||
        XScreenSaverQueryVersion(mDisplay, &major, &minor) != True)
        return 0;
    if (major < 1 || (major == 1 && minor < 1))
        return 0;
    XScreenSaverSuspend(mDisplay, suspend);
    return 1;
}
