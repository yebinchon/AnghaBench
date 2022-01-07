
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct QTMmodelsym {int cumfreq; size_t sym; } ;
struct QTMmodel {int shiftsleft; int entries; int* tabloc; struct QTMmodelsym* syms; } ;



__attribute__((used)) static void QTMupdatemodel(struct QTMmodel *model, int sym) {
  struct QTMmodelsym temp;
  int i, j;

  for (i = 0; i < sym; i++) model->syms[i].cumfreq += 8;

  if (model->syms[0].cumfreq > 3800) {
    if (--model->shiftsleft) {
      for (i = model->entries - 1; i >= 0; i--) {

        model->syms[i].cumfreq >>= 1;
        if (model->syms[i].cumfreq <= model->syms[i+1].cumfreq) {
          model->syms[i].cumfreq = model->syms[i+1].cumfreq + 1;
        }
      }
    }
    else {
      model->shiftsleft = 50;
      for (i = 0; i < model->entries ; i++) {


        model->syms[i].cumfreq -= model->syms[i+1].cumfreq;
        model->syms[i].cumfreq++;
        model->syms[i].cumfreq >>= 1;
      }





      for (i = 0; i < model->entries - 1; i++) {
        for (j = i + 1; j < model->entries; j++) {
          if (model->syms[i].cumfreq < model->syms[j].cumfreq) {
            temp = model->syms[i];
            model->syms[i] = model->syms[j];
            model->syms[j] = temp;
          }
        }
      }


      for (i = model->entries - 1; i >= 0; i--) {
        model->syms[i].cumfreq += model->syms[i+1].cumfreq;
      }

      for (i = 0; i < model->entries; i++) {
        model->tabloc[model->syms[i].sym] = i;
      }
    }
  }
}
