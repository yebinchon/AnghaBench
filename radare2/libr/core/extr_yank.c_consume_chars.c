
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut32 ;



__attribute__((used)) static ut32 consume_chars(const char *input, char b) {
 ut32 i = 0;
 if (!input) {
  return i;
 }
 for (; *input == b; i++, input++) {

 }
 return i;
}
