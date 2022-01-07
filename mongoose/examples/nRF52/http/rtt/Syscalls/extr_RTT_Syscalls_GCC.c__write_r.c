
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _reent {int dummy; } ;


 int SEGGER_RTT_Write (int ,char*,int) ;

int _write_r(struct _reent *r, int file, char *ptr, int len) {
  (void) file;
  (void) r;
  SEGGER_RTT_Write(0, ptr, len);
  return len;
}
