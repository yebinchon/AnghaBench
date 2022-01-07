
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cnfa {scalar_t__ ncolors; int post; struct carc** states; } ;
struct carc {scalar_t__ co; int to; } ;
struct TYPE_3__ {scalar_t__ co; int to; } ;
typedef TYPE_1__ regex_arc_t ;


 int Assert (int) ;
 scalar_t__ COLORLESS ;
 int check_stack_depth () ;

__attribute__((used)) static void
traverse_lacons(struct cnfa *cnfa, int st,
    int *arcs_count,
    regex_arc_t *arcs, int arcs_len)
{
 struct carc *ca;






 check_stack_depth();

 for (ca = cnfa->states[st]; ca->co != COLORLESS; ca++)
 {
  if (ca->co < cnfa->ncolors)
  {

   int ndx = (*arcs_count)++;

   if (ndx < arcs_len)
   {
    arcs[ndx].co = ca->co;
    arcs[ndx].to = ca->to;
   }
  }
  else
  {


   Assert(ca->to != cnfa->post);

   traverse_lacons(cnfa, ca->to, arcs_count, arcs, arcs_len);
  }
 }
}
