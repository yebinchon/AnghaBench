
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int render_256 ;
 int render_ansi ;
 int render_ascii ;
 int render_greyscale ;
 int render_rgb ;
 int renderer ;

__attribute__((used)) static void selectrenderer(int mode) {
 switch (mode) {
 case 'a':
  renderer = render_ascii;
  break;
 case 'A':
  renderer = render_ansi;
  break;
 case 'g': renderer = render_greyscale; break;
 case '2': renderer = render_256; break;
 default:
  renderer = render_rgb;
  break;
 }
}
