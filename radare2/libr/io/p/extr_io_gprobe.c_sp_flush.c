
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gport {int fd; int hdl; } ;


 int PURGE_RXCLEAR ;
 scalar_t__ PurgeComm (int ,int ) ;
 int TCIFLUSH ;
 scalar_t__ restart_wait (struct gport*) ;
 scalar_t__ tcflush (int ,int ) ;

__attribute__((used)) static int sp_flush (struct gport *port) {
 if (tcflush (port->fd, TCIFLUSH) < 0) {
  return -1;
 }


 return 0;
}
