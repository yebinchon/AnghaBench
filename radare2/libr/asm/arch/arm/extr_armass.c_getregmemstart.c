
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;


 int getreg (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static st32 getregmemstart(const char *input) {
 if ((strlen (input) < 1) || (!(*input == '['))) {
  return -1;
 }
 input++;
 return getreg (input);
}
