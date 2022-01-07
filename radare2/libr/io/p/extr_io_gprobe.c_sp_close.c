
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gport {int fd; int hdl; } ;


 int CLOSE_OVERLAPPED (int ) ;
 scalar_t__ CloseHandle (int ) ;
 int INVALID_HANDLE_VALUE ;
 int close (int) ;
 int read_ovl ;
 int wait_ovl ;
 int write_ovl ;

__attribute__((used)) static int sp_close(struct gport *port) {
 if (close (port->fd) == -1) {
  return -1;
 }

 port->fd = -1;

 return 0;
}
