
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int comma ;
 char* delspc (char const*) ;
 int eprintf (char*) ;
 scalar_t__ isalnum (unsigned char const) ;
 char mem_delimiter ;
 int rd_comma (char const**) ;
 int rd_expr (char const**,char,int *,int ,int ) ;
 int sp ;

__attribute__((used)) static int indx(const char **ptr, const char **list, int error, const char **expr) {
 int i;
 *ptr = delspc (*ptr);
 if (!**ptr) {
  if (error) {
   eprintf ("unexpected end of line\n");
   return 0;
  } else {
   return 0;
  }
 }
 if (comma > 1) {
  rd_comma (ptr);
 }
 for (i = 0; list[i]; i++) {
  const char *input = *ptr;
  const char *check = list[i];
  int had_expr = 0;
  if (!list[i][0]) {
   continue;
  }
  while (*check) {
   if (*check == ' ') {
    input = delspc (input);
   } else if (*check == '*') {
    *expr = input;
    mem_delimiter = check[1];
    rd_expr (&input, mem_delimiter, ((void*)0), sp, 0);
    had_expr = 1;
   } else if (*check == '+') {
    if (*input == '+' || *input == '-') {
     *expr = input;
     mem_delimiter = check[1];
     rd_expr (&input, mem_delimiter, ((void*)0), sp, 0);
    }
   } else if (*check == *input || (*check >= 'a' && *check <= 'z'
       && *check - 'a' + 'A' == *input)) {
    ++input;
   } else {
    break;
   }

   ++check;
  }
  if (*check || (isalnum ((const unsigned char) check[-1]) && isalnum ((const unsigned char) input[0]))) {
   continue;
  }
  if (had_expr) {
   input = delspc (input);
   if (*input && *input != ',') {
    continue;
   }
  }
  *ptr = input;
  comma++;
  return i + 1;
 }

 return 0;
}
