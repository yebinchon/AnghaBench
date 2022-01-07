
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
struct timeval {int dummy; } ;
typedef int fd_set ;


 int FD_SET (unsigned int,int *) ;
 int FD_ZERO (int *) ;
 int PostQuitMessage (int ) ;
 int ZeroMemory (struct timeval*,int) ;
 int g_block ;
 scalar_t__ g_tcp_sck ;
 int select (scalar_t__,int *,int ,int ,struct timeval*) ;
 scalar_t__ ui_read_wire () ;

__attribute__((used)) static int
check_sck(void)
{
  fd_set rfds;
  struct timeval tm;
  int count;
  int rv;

  rv = 0;
  if (g_block == 0)
  {
    g_block = 1;

    FD_ZERO(&rfds);
    FD_SET((unsigned int)g_tcp_sck, &rfds);
    ZeroMemory(&tm, sizeof(tm));
    count = select(g_tcp_sck + 1, &rfds, 0, 0, &tm);
    if (count > 0)
    {
      if (ui_read_wire())
      {
        rv = 1;
      }
      else
      {
        PostQuitMessage(0);
      }
    }
    g_block = 0;
  }
  return rv;
}
