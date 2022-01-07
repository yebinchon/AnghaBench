
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_3__ {char* buf_end; char* nextb; } ;
typedef TYPE_1__ buffy ;


 int format_converter (TYPE_1__*,char const*,int ) ;

__attribute__((used)) static void strx_printv(int *ccp, char *buf, size_t len, const char *format, va_list ap)
{
 buffy od;
 int cc;






 if (len == 0) {
  od.buf_end = (char *) ~0;
  od.nextb = (char *) ~0;
 } else {
  od.buf_end = &buf[len-1];
  od.nextb = buf;
 }




 cc = format_converter(&od, format, ap);
 if (len != 0 && od.nextb <= od.buf_end) {
  *(od.nextb) = '\0';
 }
 if (ccp) {
  *ccp = cc;
 }
}
