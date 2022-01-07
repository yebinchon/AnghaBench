
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XMONAD ;
 int XMONAD_FR ;
 int on_qwerty () ;

int get_xmonad_layer(){
  int qwerty = on_qwerty();

  if (qwerty)
    return(XMONAD);
  else
    return(XMONAD_FR);
}
