
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {scalar_t__ len; int * p; } ;


 int free (char*) ;

void mg_strfree(struct mg_str *s) {
  char *sp = (char *) s->p;
  s->p = ((void*)0);
  s->len = 0;
  if (sp != ((void*)0)) free(sp);
}
