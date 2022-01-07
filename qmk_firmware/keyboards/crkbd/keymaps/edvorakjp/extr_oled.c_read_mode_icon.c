
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int member_0; int member_1; int member_2; } ;
struct TYPE_3__ {int member_0; int member_1; int member_2; } ;


 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;

const char *read_mode_icon(bool windows_mode) {
  static const char logo[][2][3] = {{{0x95, 0x96, 0}, {0xb5, 0xb6, 0}}, {{0x97, 0x98, 0}, {0xb7, 0xb8, 0}}};
  static char mode_icon[10];

  int mode_number = windows_mode ? 1 : 0;
  strcpy(mode_icon, logo[mode_number][0]);

  strcat(mode_icon, "\n");
  strcat(mode_icon, logo[mode_number][1]);

  return mode_icon;
}
