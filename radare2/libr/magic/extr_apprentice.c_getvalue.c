
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_7__ {float f; int q; scalar_t__ d; int s; } ;
struct r_magic {int type; int vallen; char reln; TYPE_1__ value; } ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_2__ RMagic ;
 int R_MAGIC_CHECK ;
 int eatsize (char const**) ;
 int file_magwarn (TYPE_2__*,char*,int ) ;
 int file_signextend (TYPE_2__*,struct r_magic*,int ) ;
 char* getstr (TYPE_2__*,char const*,int ,int,int*,int) ;
 scalar_t__ strtod (char const*,char**) ;
 float strtof (char const*,char**) ;
 int strtoull (char const*,char**,int ) ;

__attribute__((used)) static int getvalue(RMagic *ms, struct r_magic *m, const char **p, int action) {
 int slen;

 switch (m->type) {
 case 137:
 case 132:
 case 128:
 case 131:
 case 130:
 case 129:
  *p = getstr(ms, *p, m->value.s, sizeof (m->value.s), &slen, action);
  if (!*p) {
   if (ms->flags & R_MAGIC_CHECK) {
    file_magwarn (ms, "cannot get string from `%s'",
     m->value.s);
   }
   return -1;
  }
  m->vallen = slen;
  if (m->type == 131) {
   m->vallen++;
  }
  return 0;
 case 135:
 case 138:
 case 133:
  if (m->reln != 'x') {
   char *ep;



   m->value.f = (float)strtod(*p, &ep);

   *p = ep;
  }
  return 0;
 case 136:
 case 139:
 case 134:
  if (m->reln != 'x') {
   char *ep;
   m->value.d = strtod(*p, &ep);
   *p = ep;
  }
  return 0;
 default:
  if (m->reln != 'x') {
   char *ep;
   m->value.q = file_signextend(ms, m,
       (ut64)strtoull(*p, &ep, 0));
   *p = ep;
   eatsize(p);
  }
  return 0;
 }
}
