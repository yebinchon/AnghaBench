
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmpnull (char*,char*) ;

__attribute__((used)) static char *parse_hints(char *input) {
 if (!strcmpnull (input, "unst")) {
  return "6";
 }
 if (!strcmpnull (input, "un")) {
  return "7";
 }
 if (!strcmpnull (input, "st")) {
  return "14";
 }
 if (!strcmpnull (input, "sy")) {
  return "15";
 }
 return "-1";
}
