
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_lflag; } ;


 int ECHO ;
 int ICANON ;
 int STDIN_FILENO ;
 int TCSAFLUSH ;
 int TCSANOW ;
 int freopen (char*,char*,int ) ;
 int isatty (int ) ;
 int stdin ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;

__attribute__((used)) static void nmstermio_set_terminal(int s) {
 struct termios tp;
 static struct termios save;
 static int state = 1;

 if (!isatty(STDIN_FILENO)) {
  stdin = freopen("/dev/tty", "r", stdin);
 }

 if (s == 0) {
  if (tcgetattr(STDIN_FILENO, &tp) == -1) {
   return;
  }

  save = tp;

  tp.c_lflag &=(~ICANON & ~ECHO);

  if (tcsetattr(STDIN_FILENO, TCSAFLUSH, &tp) == -1) {
   return;
  }
 } else {
  if (state == 0 && tcsetattr(STDIN_FILENO, TCSANOW, &save) == -1)
   return;
 }

 state = s;
}
