
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 scalar_t__ dso_json_char_needs_hexing (char const) ;
 int free (char*) ;
 char* malloc (int) ;
 int memset (char*,int ,int) ;
 int sprintf (char*,char*,char const) ;

__attribute__((used)) static char *convert_string(const char *bytes, ut32 len) {
 ut32 idx = 0, pos = 0;
 ut32 str_sz = 32 * len + 1;
 char *cpy_buffer = len > 0 ? malloc (str_sz) : ((void*)0);
 if (!cpy_buffer) {
  return cpy_buffer;
 }

 memset (cpy_buffer, 0, str_sz);
 while (idx < len && pos < len) {
  if (dso_json_char_needs_hexing (bytes[idx])) {
   if (pos + 2 < len) {
    free (cpy_buffer);
    return ((void*)0);
   }
   sprintf (cpy_buffer + pos, "\\x%02x", bytes[idx]);
   pos += 4;
  } else {
   cpy_buffer[pos] = bytes[idx];
   pos++;
  }
  idx++;
 }
 return cpy_buffer;
}
