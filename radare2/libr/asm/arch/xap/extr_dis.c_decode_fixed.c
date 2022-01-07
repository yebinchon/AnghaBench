
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {int s_u; int s_nop; int s_prefix; } ;
struct directive {char* d_asm; int d_inst; } ;
 int i2u16 (int *) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int decode_fixed(struct state *s, struct directive *d) {
 *d->d_asm = '\0';
 switch (i2u16 (&d->d_inst)) {
 case 132:
  if (s->s_prefix) {
   return 0;
  }
  s->s_nop++;
  strcpy(d->d_asm, "nop");
  break;
 case 134: strcpy(d->d_asm, "brk"); break;
 case 129: strcpy(d->d_asm, "sleep"); break;
 case 130: strcpy(d->d_asm, "sif"); break;
 case 135: strcpy(d->d_asm, "bc"); break;
 case 133: strcpy(d->d_asm, "brxl"); break;
 case 128: strcpy(d->d_asm, ""); s->s_u = 1; break;
 case 131: strcpy(d->d_asm, "rts"); break;
 }
 return d->d_asm[0]!=0;
}
