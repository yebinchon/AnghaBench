
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* putcf ) (void*,char) ;



__attribute__((used)) static void putchw(void* putp, putcf putf, int n, char z, char* bf) {
    char fc = z ? '0' : ' ';
    char ch;
    char* p = bf;
    while (*p++ && n > 0) n--;
    while (n-- > 0) putf(putp, fc);
    while ((ch = *bf++)) putf(putp, ch);
}
