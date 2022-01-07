
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut8 ;
typedef int ut32 ;
struct blowfish_state {int** s; } ;
typedef size_t inbuf ;



__attribute__((used)) static ut32 F(struct blowfish_state *const state, const ut32 inbuf) {
 ut8 a = (inbuf >> 24) & 0xff;
 ut8 b = (inbuf >> 16) & 0xff;
 ut8 c = (inbuf >> 8) & 0xff;
 ut8 d = (inbuf) & 0xff;
 return ((state->s[0][a] + state->s[1][b]) ^ state->s[2][c]) + state->s[3][d];
}
