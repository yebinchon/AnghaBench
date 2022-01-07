
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_2__ {scalar_t__ dwPlatformId; int dwMajorVersion; int dwMinorVersion; } ;
typedef scalar_t__ HWND ;


 scalar_t__ FindWindow (int ,int ) ;
 void* RegisterWindowMessage (int ) ;
 int SPI_GETWHEELSCROLLLINES ;
 scalar_t__ SendMessage (scalar_t__,void*,int ,int ) ;
 int SystemParametersInfo (int ,int ,int*,int ) ;
 scalar_t__ VER_PLATFORM_WIN32_NT ;
 scalar_t__ VER_PLATFORM_WIN32_WINDOWS ;
 int VMOUSEZ_CLASSNAME ;
 int VMOUSEZ_TITLE ;
 int VMSH_MOUSEWHEEL ;
 int VMSH_SCROLL_LINES ;
 int mouse_scroll_lines ;
 void* msh_msgmousewheel ;
 TYPE_1__ os_version ;

__attribute__((used)) static void
init_mouse_wheel(void)
{
    HWND hdl_mswheel;
    UINT msh_msgscrolllines;

    msh_msgmousewheel = 0;
    mouse_scroll_lines = 3;

    if ((os_version.dwPlatformId == VER_PLATFORM_WIN32_NT
  && os_version.dwMajorVersion >= 4)
     || (os_version.dwPlatformId == VER_PLATFORM_WIN32_WINDOWS
  && ((os_version.dwMajorVersion == 4
   && os_version.dwMinorVersion >= 10)
      || os_version.dwMajorVersion >= 5)))
    {

 SystemParametersInfo(104, 0,
  &mouse_scroll_lines, 0);
    }
    else if (os_version.dwPlatformId == VER_PLATFORM_WIN32_WINDOWS
     || (os_version.dwPlatformId == VER_PLATFORM_WIN32_NT
  && os_version.dwMajorVersion < 4))
    {



 hdl_mswheel = FindWindow("MouseZ", "Magellan MSWHEEL");
 if (hdl_mswheel)
 {
     msh_msgscrolllines = RegisterWindowMessage("MSH_SCROLL_LINES_MSG");
     if (msh_msgscrolllines)
     {
  mouse_scroll_lines = (int)SendMessage(hdl_mswheel,
   msh_msgscrolllines, 0, 0);
  msh_msgmousewheel = RegisterWindowMessage("MSWHEEL_ROLLMSG");
     }
 }
    }
}
