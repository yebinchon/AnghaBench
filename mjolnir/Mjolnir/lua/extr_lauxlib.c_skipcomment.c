
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int f; } ;
typedef TYPE_1__ LoadF ;


 int EOF ;
 int getc (int ) ;
 int skipBOM (TYPE_1__*) ;

__attribute__((used)) static int skipcomment (LoadF *lf, int *cp) {
  int c = *cp = skipBOM(lf);
  if (c == '#') {
    do {
      c = getc(lf->f);
    } while (c != EOF && c != '\n');
    *cp = getc(lf->f);
    return 1;
  }
  else return 0;
}
