
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int h; int len; char const* l; int n; } ;


 int INT_MAX ;
 int eprintf (char*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static int splitlines(const char *a, int len, struct line **lr) {
 int h, i;
 const char *p, *b = a;
 const char * const plast = a + len - 1;
 struct line *l;

 if (!a) {
  eprintf ("null pointer received\n");
  return 0;
 }


 i = 1;
 for (p = a; p < a + len; p++) {
  if (*p == '\n' || p == plast) {
   i++;
  }
 }

 *lr = l = (struct line *)malloc(sizeof(struct line) * i);
 if (!l) {
  return -1;
 }


 h = 0;
 for (p = a; p < a + len; p++) {

  h = (h * 1664525) + *p + 1013904223;

  if (*p == '\n' || p == plast) {
   l->h = h;
   h = 0;
   l->len = p - b + 1;
   l->l = b;
   l->n = INT_MAX;
   l++;
   b = p + 1;
  }
 }


 l->h = l->len = 0;
 l->l = a + len;
 return i - 1;
}
