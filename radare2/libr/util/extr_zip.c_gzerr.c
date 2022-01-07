
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *gzerr(int n) {
 const char *errors[] = {
  "",
  "file error",
  "stream error",
  "data error",
  "insufficient memory",
  "buffer error",
  "incompatible version",
 };
 if (n<1 || n>6) {
  return "unknown";
 }
 return errors[n];
}
