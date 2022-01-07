
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef char u_char ;
typedef int bool_t ;


 int GetCurrentThreadId () ;
 int fd_out ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ isprint (int) ;

void log_hexdump(bool_t on, const u_char *title, const u_char *buf,
                    int len, int offset)
{
 int i, j, jm, c;

    if (!on) return;

 fprintf(fd_out, "%04x: %s (len=%d)\n", GetCurrentThreadId(), title, len);
 for (i = 0; i < len; i += 0x10) {
  fprintf(fd_out, "  %04x: ", (u_int)(i + offset));
  jm = len - i;
  jm = jm > 16 ? 16 : jm;

  for (j = 0; j < jm; j++) {
   if ((j % 2) == 1)
    fprintf(fd_out, "%02x ", (u_int) buf[i+j]);
   else
    fprintf(fd_out, "%02x", (u_int) buf[i+j]);
  }
  for (; j < 16; j++) {
   if ((j % 2) == 1) fprintf(fd_out, "   ");
   else fprintf(fd_out, "  ");
  }
  fprintf(fd_out, " ");

  for (j = 0; j < jm; j++) {
   c = buf[i+j];
   c = isprint(c) ? c : '.';
   fprintf(fd_out, "%c", c);
  }
  fprintf(fd_out, "\n");
 }
    fflush(fd_out);
}
