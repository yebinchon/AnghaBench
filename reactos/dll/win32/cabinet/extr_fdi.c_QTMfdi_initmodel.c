
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct QTMmodelsym {int sym; int cumfreq; } ;
struct QTMmodel {int shiftsleft; int entries; int* tabloc; struct QTMmodelsym* syms; } ;


 int memset (int*,int,int) ;

__attribute__((used)) static void QTMfdi_initmodel(struct QTMmodel *m, struct QTMmodelsym *sym, int n, int s) {
  int i;
  m->shiftsleft = 4;
  m->entries = n;
  m->syms = sym;
  memset(m->tabloc, 0xFF, sizeof(m->tabloc));
  for (i = 0; i < n; i++) {
    m->tabloc[i+s] = i;
    m->syms[i].sym = i+s;
    m->syms[i].cumfreq = n-i;
  }
  m->syms[n].cumfreq = 0;
}
