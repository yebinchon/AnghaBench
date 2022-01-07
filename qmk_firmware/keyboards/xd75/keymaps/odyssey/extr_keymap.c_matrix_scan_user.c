
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LED_TYPE ;


 int col ;
 int * led ;
 scalar_t__ rc ;
 int rgb ;
 int rgblight_set () ;
 int right ;
 int sethsv (int,int,int,int *) ;
 scalar_t__ speed ;
 int t ;

void matrix_scan_user(void) {
  if (rgb==0) return;
  if (rgb==1) {
    if (rc == 0) {
      rc = speed;
      for(int i = 0; i<6; i++) {
        sethsv(42*((t+i)%6), 255, 255, (LED_TYPE *)&led[i]);
      }
      rgblight_set();
      t++; t = t % 6;
    }
  } else if (rgb==2) {
    if (rc == 0) {
      rc = speed;
      col = (col + 1) % 36;
      for (int i = 0; i<6; i++) {
        if (i==t)
          sethsv(42*(((col-1)/6)%6), 255, 255, (LED_TYPE *)&led[(right ? t : 5-t)]);
        else
          sethsv(0, 0, 0, (LED_TYPE *)&led[right ? i : 5-i]);
      }
      rgblight_set();
      t++; t = t % 6;
      if (t == 0) right = !right;
    }
  }
  rc--;
}
