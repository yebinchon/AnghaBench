
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct state {scalar_t__ nouts; struct state* next; } ;
struct nfa {scalar_t__* bos; scalar_t__* eos; int cm; int * parent; struct state* states; TYPE_2__* post; TYPE_1__* pre; } ;
struct TYPE_4__ {int no; } ;
struct TYPE_3__ {int no; } ;
typedef int FILE ;


 scalar_t__ COLORLESS ;
 int dumpcolors (int ,int *) ;
 int dumpstate (struct state*,int *) ;
 int fflush (int *) ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
dumpnfa(struct nfa *nfa,
  FILE *f)
{
}
