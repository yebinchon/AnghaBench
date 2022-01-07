
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char toupper (unsigned char) ;

__attribute__((used)) static void clean_line(char* oline, const char* line) {
 int cn = 0, n = 0;

 while (line[cn] != 0 && line[cn] != '\n' && line[cn] != ';') {
  if (line[cn] >= '!' && line[cn] <= '~') {
   char current_char = line[cn];


   if (current_char >= 'a' && current_char <= 'z')
    current_char = toupper ((unsigned char)current_char);


   oline[n] = current_char;
   n++;
  }
  cn++;
 }
 oline[n] = 0;
}
