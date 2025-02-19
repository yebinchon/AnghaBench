
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (unsigned char*) ;
 unsigned char* malloc (int) ;
 int read (int,unsigned char*,int) ;
 int strlen (char const*) ;
 int write (int,...) ;

__attribute__((used)) static void r2cmd(int in, int out, const char *cmd) {
        write (out, cmd, strlen (cmd) + 1);
        write (out, "\n", 1);
        int bufsz = (1024 * 64);
        unsigned char *buf = malloc (bufsz);
        if (!buf) {
                return;
        }
        while (1) {
                int n = read (in, buf, bufsz);
                int len = strlen ((const char *)buf);
                n = len;
                if (n < 1) {
                        break;
                }
                write (1, buf, n);
  if (n != bufsz) {
   break;
  }
        }
        free (buf);
        write (1, "\n", 1);
}
