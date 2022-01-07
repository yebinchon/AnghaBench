
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;







 int abort () ;
 int isdigit (int ) ;

__attribute__((used)) static int check_format_type(const char *ptr, int type) {
 int quad = 0;
 if (*ptr == '\0') {

  return -1;
 }

 switch (type) {
 case 129:
  quad = 1;

 case 130:
  if (*ptr == '-') {
   ptr++;
  }
  if (*ptr == '.') {
   ptr++;
  }
  while (isdigit ((ut8)*ptr)) {
   ptr++;
  }
  if (*ptr == '.') {
   ptr++;
  }
  while (isdigit ((ut8)*ptr)) {
   ptr++;
  }
  if (quad) {
   if (*ptr++ != 'l') {
    return -1;
   }
   if (*ptr++ != 'l') {
    return -1;
   }
  }
  switch (*ptr++) {
  case 'l':
   switch (*ptr++) {
   case 'i':
   case 'd':
   case 'u':
   case 'x':
   case 'X':
    return 0;
   default:
    return -1;
   }
  case 'h':
   switch (*ptr++) {
   case 'h':
    switch (*ptr++) {
    case 'i':
    case 'd':
    case 'u':
    case 'x':
    case 'X':
     return 0;
    default:
     return -1;
    }
   case 'd':
    return 0;
   default:
    return -1;
   }
  case 'i':
  case 'c':
  case 'd':
  case 'u':
  case 'x':
  case 'X':
   return 0;
  default:
   return -1;
  }
 case 131:
 case 132:
  if (*ptr == '-') {
   ptr++;
  }
  if (*ptr == '.') {
   ptr++;
  }
  while (isdigit ((ut8)*ptr)) {
   ptr++;
  }
  if (*ptr == '.') {
   ptr++;
  }
  while (isdigit ((ut8)*ptr)) {
   ptr++;
  }

  switch (*ptr++) {
  case 'e':
  case 'E':
  case 'f':
  case 'F':
  case 'g':
  case 'G':
   return 0;

  default:
   return -1;
  }
 case 128:
  if (*ptr == '-') {
   ptr++;
  }
  while (isdigit ((ut8)*ptr)) {
   ptr++;
  }
  if (*ptr == '.') {
   ptr++;
   while (isdigit ((ut8)*ptr)) {
    ptr++;
   }
  }

  if (*ptr++ == 's') {
   return 0;
  }
  return -1;
 default:

  abort ();
 }

 return -1;
}
