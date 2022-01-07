
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __isAnsiSequence (char const*) ;

__attribute__((used)) static int __getAnsiPiece(const char *p, char *chr) {
 const char *q = p;
 if (!p) {
  return 0;
 }
 while (p && *p && *p != '\n' && ! __isAnsiSequence (p)) {
  p++;
 }
 if (chr) {
  *chr = *p;
 }
 return p - q;
}
