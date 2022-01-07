
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
struct state {unsigned char const* s_buf; scalar_t__ s_ff_quirk; int * s_out; int s_off; } ;
struct directive {int d_inst; int d_asm; } ;


 int free (struct directive*) ;
 struct state* get_state () ;
 int i2u16 (int *) ;
 int memset (struct state*,int ,int) ;
 struct directive* next_inst (struct state*) ;
 int sprintf (int ,char*,int) ;
 int strcpy (char*,int ) ;
 int xap_decode (struct state*,struct directive*) ;

__attribute__((used)) static int arch_xap_disasm(char *str, const unsigned char *buf, ut64 seek) {
 struct state *s = get_state();
 struct directive *d;
 memset(s, 0, sizeof(*s));
 s->s_buf = buf;
 s->s_off = seek;
 s->s_out = ((void*)0);
 d = next_inst(s);
 if (d != ((void*)0)) {
  xap_decode (s, d);
  strcpy (str, d->d_asm);
  free (d);
 } else {
  *str = '\0';
 }






 return 0;
}
