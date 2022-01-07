
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltTemplatePtr ;
struct TYPE_3__ {scalar_t__ mode; scalar_t__ match; } ;



__attribute__((used)) static char *
pretty_templ_match(xsltTemplatePtr templ) {
  static char dst[1001];
  char *src = (char *)templ->match;
  int i=0,j;


  for (j=0; i<1000 && src[j]; i++,j++) {
      for(;src[j]==' ';j++);
      dst[i]=src[j];
  }
  if(i<998 && templ->mode) {

    dst[i++]='[';
    src=(char *)templ->mode;
    for (j=0; i<999 && src[j]; i++,j++) {
      dst[i]=src[j];
    }
    dst[i++]=']';
  }
  dst[i]='\0';
  return dst;
}
