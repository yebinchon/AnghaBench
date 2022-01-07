
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* mode; } ;
typedef TYPE_1__ php_stream ;



void php_stream_mode_sanitize_fdopen_fopencookie(php_stream *stream, char *result)
{


 const char *cur_mode = stream->mode;
 int has_plus = 0,
          has_bin = 0,
    i,
    res_curs = 0;

 if (cur_mode[0] == 'r' || cur_mode[0] == 'w' || cur_mode[0] == 'a') {
  result[res_curs++] = cur_mode[0];
 } else {


  result[res_curs++] = 'w';



 }


 for (i = 1; i < 4 && cur_mode[i] != '\0'; i++) {
  if (cur_mode[i] == 'b') {
   has_bin = 1;
  } else if (cur_mode[i] == '+') {
   has_plus = 1;
  }

 }

 if (has_bin) {
  result[res_curs++] = 'b';
 }
 if (has_plus) {
  result[res_curs++] = '+';
 }

 result[res_curs] = '\0';
}
