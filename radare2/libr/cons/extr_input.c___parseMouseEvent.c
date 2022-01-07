
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ypos ;
typedef int xpos ;


 int atoi (char*) ;
 void* r_cons_readchar () ;
 int r_cons_set_click (int ,int ) ;

__attribute__((used)) static int __parseMouseEvent() {
 char xpos[32];
 char ypos[32];
 (void)r_cons_readchar ();
 int ch2 = r_cons_readchar ();



 if (ch2 == ';') {
  int i;

  for (i = 0; i < sizeof (xpos); i++) {
   char ch = r_cons_readchar ();
   if (ch == ';' || ch == 'M') {
    break;
   }
   xpos[i] = ch;
  }
  xpos[i] = 0;
  for (i = 0; i < sizeof (ypos); i++) {
   char ch = r_cons_readchar ();
   if (ch == ';' || ch == 'M') {
    break;
   }
   ypos[i] = ch;
  }
  ypos[i] = 0;
  r_cons_set_click (atoi (xpos), atoi (ypos));
  (void) r_cons_readchar ();

  int ch = r_cons_readchar ();
  if (ch == 27) {
   ch = r_cons_readchar ();
  }
  if (ch == '[') {
   do {
    ch = r_cons_readchar ();
   } while (ch != 'M');
  }
 }
 return 0;
}
