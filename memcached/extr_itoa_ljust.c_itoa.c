
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 char* out2 (int,char*) ;

__attribute__((used)) static inline char* itoa(uint32_t u, char* p, int d, int n) {
    switch(n) {
    case 10: d = u / 100000000; p = out2( d, p );
    case 9: u -= d * 100000000;
    case 8: d = u / 1000000; p = out2( d, p );
    case 7: u -= d * 1000000;
    case 6: d = u / 10000; p = out2( d, p );
    case 5: u -= d * 10000;
    case 4: d = u / 100; p = out2( d, p );
    case 3: u -= d * 100;
    case 2: d = u / 1; p = out2( d, p );
    case 1: ;
    }
    *p = '\0';
    return p;
}
