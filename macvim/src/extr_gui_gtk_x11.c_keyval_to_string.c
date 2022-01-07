
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint32 ;
typedef int char_u ;


 int BS ;
 int CAR ;
 int DEL ;
 int ESC ;

 unsigned int GDK_CONTROL_MASK ;







 int NL ;
 int NUL ;
 int TAB ;
 int gdk_keyval_to_unicode (unsigned int) ;
 int utf_char2bytes (int,int*) ;

__attribute__((used)) static int
keyval_to_string(unsigned int keyval, unsigned int state, char_u *string)
{
    int len;
    guint32 uc;

    uc = gdk_keyval_to_unicode(keyval);
    if (uc != 0)
    {

 if ((state & GDK_CONTROL_MASK) && uc >= 0x20 && uc < 0x80)
 {




     if (uc >= '@')
  string[0] = uc & 0x1F;
     else if (uc == '2')
  string[0] = NUL;
     else if (uc >= '3' && uc <= '7')
  string[0] = uc ^ 0x28;
     else if (uc == '8')
  string[0] = BS;
     else if (uc == '?')
  string[0] = DEL;
     else
  string[0] = uc;
     len = 1;
 }
 else
 {


     len = utf_char2bytes((int)uc, string);
 }
    }
    else
    {



 len = 1;
 switch (keyval)
 {
     case 128: case 131: case 132:
  string[0] = TAB;
  break;
     case 130:
  string[0] = NL;
  break;
     case 129: case 133: case 135:
  string[0] = CAR;
  break;
     case 134:
  string[0] = ESC;
  break;
     default:
  len = 0;
  break;
 }
    }
    string[len] = NUL;

    return len;
}
