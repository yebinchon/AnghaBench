
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int strcmp (char const*,char*) ;

__attribute__((used)) static bool handlePAC(ut32 *op, const char *str) {
 if (!strcmp (str, "autiasp")) {
  *op = 0xbf2303d5;
  return 1;
 }
 if (!strcmp (str, "autiaz")) {
  *op = 0x9f2303d5;
  return 1;
 }
 if (!strcmp (str, "autibsp")) {
  *op = 0xff2303d5;
  return 1;
 }
 if (!strcmp (str, "autibz")) {
  *op = 0xdf2303d5;
  return 1;
 }
 if (!strcmp (str, "paciaz")) {
  *op = 0x1f2303d5;
  return 1;
 }
 if (!strcmp (str, "pacibz")) {
  *op = 0x5f2303d5;
  return 1;
 }
 if (!strcmp (str, "paciasp")) {
  *op = 0x3f2303d5;
  return 1;
 }
 if (!strcmp (str, "pacibsp")) {
  *op = 0x7f2303d5;
  return 1;
 }
 if (!strcmp (str, "retab")) {
  *op = 0xff0f5fd6;
  return 1;
 }
 return 0;
}
