
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;

__attribute__((used)) static bool isBinopHelp(const char *op) {
 if (!op) {
  return 0;
 }
 if (!strcmp (op, "help")) {
  return 1;
 }
 if (!strcmp (op, "?")) {
  return 1;
 }
 if (!strcmp (op, "h")) {
  return 1;
 }
 return 0;
}
