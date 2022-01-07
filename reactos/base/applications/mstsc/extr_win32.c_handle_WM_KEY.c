
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int UINT ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;


 int HIWORD (int ) ;
 int get_scan_code_from_ascii (int ) ;
 int ui_key_down (int,int) ;
 int ui_key_up (int,int) ;

__attribute__((used)) static LRESULT
handle_WM_KEY(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
  int scancode;
  int ext;
  int down;

  ext = HIWORD(lParam);
  scancode = ext;
  down = !(ext & 0x8000);
  scancode &= 0xff;
  if (scancode == 0)
  {
    scancode = get_scan_code_from_ascii(wParam);
  }
  ext &= 0x0100;
  if (scancode == 0x0045)
  {
    ext &= ~0x0100;
  }
  if (down)
  {
    ui_key_down(scancode, ext);
  }
  else
  {
    ui_key_up(scancode, ext);
  }
  return 0;
}
