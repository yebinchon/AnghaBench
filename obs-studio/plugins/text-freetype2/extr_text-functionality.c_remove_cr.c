
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;



__attribute__((used)) static void remove_cr(wchar_t *source)
{
 int j = 0;
 for (int i = 0; source[i] != '\0'; ++i) {
  if (source[i] != L'\r') {
   source[j++] = source[i];
  }
 }
 source[j] = '\0';
}
