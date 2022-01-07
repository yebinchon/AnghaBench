
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int php_code_type ;


 int CG (int ) ;
 int ZEND_ASSERT (char*) ;
 int body ;
 int * cli_get_prompt (char*,char) ;







 int short_tags ;


 int strncmp (char*,char*,int) ;

__attribute__((used)) static int cli_is_valid_code(char *code, size_t len, zend_string **prompt)
{
 int valid_end = 1, last_valid_end;
 int brackets_count = 0;
 int brace_count = 0;
 size_t i;
 php_code_type code_type = body;
 char *heredoc_tag = ((void*)0);
 size_t heredoc_len;

 for (i = 0; i < len; ++i) {
  switch(code_type) {
   default:
    switch(code[i]) {
     case '{':
      brackets_count++;
      valid_end = 0;
      break;
     case '}':
      if (brackets_count > 0) {
       brackets_count--;
      }
      valid_end = brackets_count ? 0 : 1;
      break;
     case '(':
      brace_count++;
      valid_end = 0;
      break;
     case ')':
      if (brace_count > 0) {
       brace_count--;
      }
      valid_end = 0;
      break;
     case ';':
      valid_end = brace_count == 0 && brackets_count == 0;
      break;
     case ' ':
     case '\r':
     case '\n':
     case '\t':
      break;
     case '\'':
      code_type = 129;
      break;
     case '"':
      code_type = 134;
      break;
     case '#':
      code_type = 135;
      break;
     case '/':
      if (code[i+1] == '/') {
       i++;
       code_type = 135;
       break;
      }
      if (code[i+1] == '*') {
       last_valid_end = valid_end;
       valid_end = 0;
       code_type = 136;
       i++;
       break;
      }
      valid_end = 0;
      break;
     case '?':
      if (code[i+1] == '>') {
       i++;
       code_type = 130;
       break;
      }
      valid_end = 0;
      break;
     case '<':
      valid_end = 0;
      if (i + 2 < len && code[i+1] == '<' && code[i+2] == '<') {
       i += 2;
       code_type = 131;
       heredoc_tag = ((void*)0);
       heredoc_len = 0;
      }
      break;
     default:
      valid_end = 0;
      break;
    }
    break;
   case 129:
    if (code[i] == '\\') {
     code_type = 128;
    } else {
     if (code[i] == '\'') {
      code_type = body;
     }
    }
    break;
   case 128:
    code_type = 129;
    break;
   case 134:
    if (code[i] == '\\') {
     code_type = 133;
    } else {
     if (code[i] == '"') {
      code_type = body;
     }
    }
    break;
   case 133:
    code_type = 134;
    break;
   case 135:
    if (code[i] == '\n') {
     code_type = body;
    }
    break;
   case 136:
    if (code[i-1] == '*' && code[i] == '/') {
     code_type = body;
     valid_end = last_valid_end;
    }
    break;
   case 131:
    switch(code[i]) {
     case ' ':
     case '\t':
     case '\'':
      break;
     case '\r':
     case '\n':
      if (heredoc_tag) {
       code_type = 132;
      } else {

       code_type = body;
      }
      break;
     default:
      if (!heredoc_tag) {
       heredoc_tag = code+i;
      }
      heredoc_len++;
      break;
    }
    break;
   case 132:
    ZEND_ASSERT(heredoc_tag);
    if (!strncmp(code + i - heredoc_len + 1, heredoc_tag, heredoc_len)) {
     unsigned char c = code[i + 1];
     char *p = code + i - heredoc_len;

     if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || (c >= '0' && c <= '9') || c == '_' || c >= 0x80) break;
     while (*p == ' ' || *p == '\t') p--;
     if (*p != '\n') break;
     code_type = body;
    }
    break;
   case 130:
    if ((CG(short_tags) && !strncmp(code+i-1, "<?", 2))
    || (i > 3 && !strncmp(code+i-4, "<?php", 5))
    ) {
     code_type = body;
    }
    break;
  }
 }

 switch (code_type) {
  default:
   if (brace_count) {
    *prompt = cli_get_prompt("php", '(');
   } else if (brackets_count) {
    *prompt = cli_get_prompt("php", '{');
   } else {
    *prompt = cli_get_prompt("php", '>');
   }
   break;
  case 129:
  case 128:
   *prompt = cli_get_prompt("php", '\'');
   break;
  case 134:
  case 133:
   *prompt = cli_get_prompt("php", '"');
   break;
  case 136:
   *prompt = cli_get_prompt("/* ", '>');
   break;
  case 132:
   *prompt = cli_get_prompt("<<<", '>');
   break;
  case 130:
   *prompt = cli_get_prompt("   ", '>');
   break;
 }

 if (!valid_end || brackets_count) {
  return 0;
 } else {
  return 1;
 }
}
