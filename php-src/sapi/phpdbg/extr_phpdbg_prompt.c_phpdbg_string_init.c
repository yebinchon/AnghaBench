
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phpdbg_init_state {scalar_t__ code; int member_0; } ;


 int free (scalar_t__) ;
 int phpdbg_line_init (char*,struct phpdbg_init_state*) ;
 char* strtok (char*,char*) ;

void phpdbg_string_init(char *buffer) {
 struct phpdbg_init_state state = {0};
 char *str = strtok(buffer, "\n");

 while (str) {
  phpdbg_line_init(str, &state);

  str = strtok(((void*)0), "\n");
 }

 if (state.code) {
  free(state.code);
 }
}
