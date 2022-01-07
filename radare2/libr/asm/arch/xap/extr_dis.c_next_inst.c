
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {scalar_t__ s_format; } ;
struct directive {int dummy; } ;


 int free (struct directive*) ;
 struct directive* malloc (int) ;
 int memset (struct directive*,int ,int) ;
 int perror (char*) ;
 int read_bin (struct state*,struct directive*) ;
 int read_text (struct state*,struct directive*) ;

__attribute__((used)) static inline struct directive *next_inst(struct state *s) {
 int rd;
 struct directive *d = malloc (sizeof (*d));
 if (!d) {
  perror ("malloc()");
  return ((void*)0);
 }
 memset (d, 0, sizeof (*d));





 rd = read_bin (s, d);
 if (!rd) {
  free (d);
  return ((void*)0);
 }

 return d;
}
