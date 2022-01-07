
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int _strlen(const char* s) {
  int Len;

  Len = 0;
  if (s == ((void*)0)) {
    return 0;
  }
  do {
    if (*s == 0) {
      break;
    }
    Len++;
    s++;
  } while (1);
  return Len;
}
