
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int memset (char*,int ,int) ;
 int read (int ,char*,int) ;
 int strlen (char*) ;
 int write (int ,char*,int ) ;

int nmstermio_get_cursor_row(void) {
 int i, r;
 int row = 0;
 char buf[10];
 char *cmd = "\033[6n";

 memset(buf, 0, sizeof(buf));

 r = write(STDOUT_FILENO, cmd, strlen(cmd));

 r = read(STDIN_FILENO, buf, sizeof(buf));

 for (i = 0; i < r; ++i) {
  if (buf[i] == 27 || buf[i] == '[') {
   continue;
  }

  if (buf[i] >= '0' && buf[i] <= '9') {
   row = (row * 10) + (buf[i] - '0');
  }

  if (buf[i] == ';' || buf[i] == 'R' || buf[i] == 0) {
   break;
  }
 }

 return row;
}
