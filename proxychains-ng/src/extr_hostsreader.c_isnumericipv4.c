
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int isnumericipv4(const char* ipstring) {
 size_t x = 0, n = 0, d = 0;
 int wasdot = 0;
 while(1) {
  switch(ipstring[x]) {
   case 0: goto done;
   case '.':
    if(!n || wasdot) return 0;
    d++;
    wasdot = 1;
    break;
   case '0': case '1': case '2': case '3': case '4':
   case '5': case '6': case '7': case '8': case '9':
    n++;
    wasdot = 0;
    break;
   default:
    return 0;
  }
  x++;
 }
 done:
 if(d == 3 && n >= 4 && n <= 12) return 1;
 return 0;
}
