
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int send_string (char*) ;
 size_t strcspn (char const*,char*) ;
 int strncpy (char*,char const*,size_t) ;
 char tolower (unsigned char) ;
 int unicode_input_finish () ;
 int unicode_input_start () ;

__attribute__((weak))
void send_unicode_hex_string(const char* str) {
  if (!str) { return; }

  while (*str) {

    for (; *str == ' '; str++);
    size_t n = strcspn(str, " ");
    char code_point[n+1];
    strncpy(code_point, str, n);
    code_point[n] = '\0';


    for (char *p = code_point; *p; p++) {
      *p = tolower((unsigned char)*p);
    }


    unicode_input_start();
    send_string(code_point);
    unicode_input_finish();

    str += n;
  }
}
