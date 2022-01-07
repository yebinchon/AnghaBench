
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_json_error_code ;
__attribute__((used)) static const char *php_json_get_error_msg(php_json_error_code error_code)
{
 switch(error_code) {
  case 134:
   return "No error";
  case 137:
   return "Maximum stack depth exceeded";
  case 132:
   return "State mismatch (invalid or malformed JSON)";
  case 138:
   return "Control character error, possibly incorrectly encoded";
  case 131:
   return "Syntax error";
  case 128:
   return "Malformed UTF-8 characters, possibly incorrectly encoded";
  case 133:
   return "Recursion detected";
  case 136:
   return "Inf and NaN cannot be JSON encoded";
  case 130:
   return "Type is not supported";
  case 135:
   return "The decoded property name is invalid";
  case 129:
   return "Single unpaired UTF-16 surrogate in unicode escape";
  default:
   return "Unknown error";
 }
}
