
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 int fprintf (int ,char*) ;
 int get_register_id (char) ;
 int stderr ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static ut8 decode_parameter(char* param, int* extra_word_needed, ut16* extra_word_value) {

 int square_brackets = 0;
 int first_sqbracket = 0, last_sqbracket = 0;
 if (param[0] == '[') {
  first_sqbracket = 1;
  param++;
 }
 if (param[strlen(param) - 1] == ']') {
  last_sqbracket = 1;
  param[strlen(param) - 1] = 0;
 }


 if (first_sqbracket == 1) {
  square_brackets = 1;
  if (last_sqbracket != 1) {
   fprintf (stderr, "Missing last square bracket\n");
   return 0;
  }
 } else {
  if (last_sqbracket == 1) {
   fprintf (stderr, "Missing first square bracket\n");
   return 0;
  }
 }


 if (param[0] == '0' && param[1] == 'X') {

  ut16 value = 0;
  param = param + 2;
  int digit_count = strlen(param);
  int digit_num = 0;
  int reg = -1;
  for (digit_num = 0; digit_num < digit_count; digit_num++) {

   int digit_val = -1;
   char current_digit = param[digit_num];
   if (current_digit >= '0' && current_digit <= '9')
    digit_val = current_digit - '0';
   if (current_digit >= 'A' && current_digit <= 'F')
    digit_val = current_digit - 'A' + 10;

   if (current_digit == '+' && square_brackets == 1) {
    reg = get_register_id(param[digit_num + 1]);
    digit_num++;
   } else {

    if (digit_val == -1) {
     fprintf (stderr, "invalid literal\n");
     return 0;
    }


    value = (value << 4) + digit_val;
   }
  }

  if (value <= 0x1f && square_brackets == 0)
   return value + 0x20;

  *extra_word_needed = 1;
  *extra_word_value = value;

  if (square_brackets == 1) {
   if (reg != -1)
    return 0x10 + reg;
   return 0x1e;
  }
  return 0x1f;
 }


 if (param[0] >= '0' && param[0] <= '9') {

  ut16 value = 0;
  int digit_count = strlen(param);
  int digit_num = 0;
  int reg = -1;
  for (digit_num = 0; digit_num < digit_count; digit_num++) {

   int digit_val = -1;
   char current_digit = param[digit_num];
   if (current_digit >= '0' && current_digit <= '9')
    digit_val = current_digit - '0';

   if (current_digit == '+' && square_brackets == 1) {
    reg = get_register_id(param[digit_num + 1]);
    digit_num++;
   } else {

    if (digit_val == -1) {
     fprintf (stderr, "invalid literal\n");
     return 0;
    }


    value = (value * 10) + digit_val;
   }
  }
  if (value <= 0x1f && square_brackets == 0)
   return value + 0x20;

  *extra_word_needed = 1;
  *extra_word_value = value;

  if (square_brackets == 1) {
   if (reg != -1)
    return 0x10 + reg;
   return 0x1e;
  }
  return 0x1f;
 }


 if (param[1] == 0) {
  ut8 reg = get_register_id (param[0]);
  if (square_brackets == 1)
   reg += 0x08;
  return reg;
 }


 if (!strncmp ("POP", param, 3)) return 0x18;
 if (!strncmp ("PEEK", param, 4)) return 0x19;
 if (!strncmp ("PUSH", param, 4)) return 0x1a;
 if (!strncmp ("SP", param, 2)) return 0x1b;
 if (!strncmp ("PC", param, 2)) return 0x1c;
 if (!strncmp ("O", param, 1)) return 0x1d;


 *extra_word_needed = 1;


 *extra_word_value = 0;
 return 0x1f;
}
