
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEND_STRING (char*) ;



 int long_tap_timer ;

void check_tap_and_send_key(int MEMBER) {
  if (long_tap_timer < 500) {
    switch (MEMBER) {
      case 135:
        SEND_STRING("KUROSAWA DIA");
      break;
      case 129:
        SEND_STRING("WATANABE YOU");
      break;
      case 136:
        SEND_STRING("TAKAMI CHIKA");
      break;
      case 128:
        SEND_STRING("KUNIKIDA HANAMARU");
      break;
      case 131:
        SEND_STRING("KUROSAWA RUBY");
      break;
      case 130:
        SEND_STRING("TSUSHIMA YOSHIKO");
      break;
      case 132:
        SEND_STRING("SAKURAUCHI RIKO");
      break;
      case 133:
        SEND_STRING("OHARA MARI");
      break;
      case 134:
        SEND_STRING("MATSUURA KANAN");
      break;
      }
  }
  long_tap_timer = 0;
}
