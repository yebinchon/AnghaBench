
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 char* calloc (int,int) ;
 scalar_t__ dso_json_char_needs_hexing (char const) ;
 int sprintf (char*,char*,char const) ;
 int strcat (char*,char*) ;

char * dso_json_convert_string (const char * bytes, ut32 len) {
 ut32 idx = 0, pos = 1;
 ut32 str_sz = 4*len+1+2;
 char *cpy_buffer = len > 0 ? calloc (1, str_sz): ((void*)0);
 if (!cpy_buffer) return cpy_buffer;

 cpy_buffer[0] = '"';
 while (idx < len) {
  if (bytes[idx] == '"') {
   sprintf (cpy_buffer+pos, "\\%c", bytes[idx]);
   pos += 2;
  } else if (dso_json_char_needs_hexing (bytes[idx])) {
   sprintf (cpy_buffer+pos, "\\x%02x", bytes[idx]);
   pos += 4;
  } else {
   cpy_buffer[pos] = bytes[idx];
   pos++;
  }
  idx ++;
 }
 strcat (cpy_buffer, "\"");
 return cpy_buffer;
}
