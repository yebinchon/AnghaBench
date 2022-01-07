
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long match; unsigned long lose; int architecture; char* name; int flags; int args; } ;
typedef TYPE_1__ sparc_opcode ;


 int F_ALIAS ;
 char* _ (char*) ;
 int current_arch_mask ;
 int fprintf (int ,char*,char*,...) ;
 int stderr ;
 scalar_t__ strchr (int ,char) ;
 unsigned int strcmp (char*,char*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static int
compare_opcodes (const void * a, const void * b)
{
  sparc_opcode *op0 = * (sparc_opcode **) a;
  sparc_opcode *op1 = * (sparc_opcode **) b;
  unsigned long int match0 = op0->match, match1 = op1->match;
  unsigned long int lose0 = op0->lose, lose1 = op1->lose;
  register unsigned int i;






  if (op0->architecture & current_arch_mask)
    {
   if (!(op1->architecture & current_arch_mask)) {
    return -1;
   }
    }
  else
    {
     if (op1->architecture & current_arch_mask) {
      return 1;
     } else if (op0->architecture != op1->architecture) {
      return op0->architecture - op1->architecture;
     }
    }



  if (match0 & lose0)
    {
      fprintf
 (stderr,

  _("Internal error:  bad sparc-opcode.h: \"%s\", %#.8lx, %#.8lx\n"),
  op0->name, match0, lose0);
      op0->lose &= ~op0->match;
      lose0 = op0->lose;
    }

  if (match1 & lose1)
    {
      fprintf
 (stderr,

  _("Internal error: bad sparc-opcode.h: \"%s\", %#.8lx, %#.8lx\n"),
  op1->name, match1, lose1);
      op1->lose &= ~op1->match;
      lose1 = op1->lose;
    }



  for (i = 0; i < 32; ++i)
    {
      unsigned long int x = 1 << i;
      int x0 = (match0 & x) != 0;
      int x1 = (match1 & x) != 0;

      if (x0 != x1) {
       return x1 - x0;
      }
    }

  for (i = 0; i < 32; ++i)
    {
      unsigned long int x = 1 << i;
      int x0 = (lose0 & x) != 0;
      int x1 = (lose1 & x) != 0;

      if (x0 != x1) {
       return x1 - x0;
      }
    }





  {
    int alias_diff = (op0->flags & F_ALIAS) - (op1->flags & F_ALIAS);

    if (alias_diff != 0) {

     return alias_diff;
    }
  }



  i = strcmp (op0->name, op1->name);
  if (i)
    {
   if (op0->flags & F_ALIAS) {
    return i;
   } else {
    fprintf (stderr,

     _ ("Internal error: bad sparc-opcode.h: \"%s\" == \"%s\"\n"),
     op0->name, op1->name);
   }
    }


  {
    int length_diff = strlen (op0->args) - strlen (op1->args);

    if (length_diff != 0) {

     return length_diff;
    }
  }


  {
    char *p0 = (char *) strchr (op0->args, '+');
    char *p1 = (char *) strchr (op1->args, '+');

    if (p0 && p1)
      {



 if (p0[-1] == 'i' && p1[1] == 'i') {

  return 1;
 }
 if (p0[1] == 'i' && p1[-1] == 'i') {

  return -1;
 }
      }
  }


  {
    int i0 = strncmp (op0->args, "i,1", 3) == 0;
    int i1 = strncmp (op1->args, "i,1", 3) == 0;

    if (i0 ^ i1) {
     return i0 - i1;
    }
  }







  return 0;
}
