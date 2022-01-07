
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int flags; int offset; int name; } ;
typedef int TCCState ;
typedef TYPE_1__ FlagDef ;


 int FD_INVERT ;
 int strcmp (char const*,int ) ;

int set_flag(TCCState *s, const FlagDef *flags, int nb_flags,
       const char *name, int value)
{
 int i;
 const FlagDef *p;
 const char *r;

 r = name;
 if (r[0] == 'n' && r[1] == 'o' && r[2] == '-') {
  r += 3;
  value = !value;
 }
 for (i = 0, p = flags; i < nb_flags; i++, p++) {
  if (!strcmp (r, p->name)) {
   goto found;
  }
 }
 return -1;
found:
 if (p->flags & FD_INVERT) {
  value = !value;
 }
 *(int *) ((uint8_t *) s + p->offset) = value;
 return 0;
}
