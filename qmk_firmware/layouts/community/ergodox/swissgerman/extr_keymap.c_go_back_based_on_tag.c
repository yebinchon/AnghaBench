
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_LEFT ;
 int send_key (int ) ;
 int const strlen (char*) ;

void go_back_based_on_tag(char* tag) {
  const int BRACKETS_AND_SLASH_LENGTH = 3;

  for (int i=0; i < strlen(tag) + BRACKETS_AND_SLASH_LENGTH; i++) {
    send_key(KC_LEFT);
  }
}
