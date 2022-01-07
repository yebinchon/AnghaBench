
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int zero_start; scalar_t__ lsign; } ;
struct TYPE_10__ {int sign_wrote; int num_curr; char* number_p; int num_in; int out_pre_spaces; char* last_relevant; char sign; char* inout_p; int num_count; int L_positive_sign; int L_negative_sign; TYPE_3__* Num; int decimal; int inout; } ;
typedef TYPE_1__ NUMProc ;


 int DEBUG_elog_output ;
 scalar_t__ IS_BRACKET (TYPE_3__*) ;
 scalar_t__ IS_DECIMAL (TYPE_3__*) ;
 scalar_t__ IS_FILLMODE (TYPE_3__*) ;
 scalar_t__ IS_LSIGN (TYPE_3__*) ;
 int IS_PREDEC_SPACE (TYPE_1__*) ;
 scalar_t__ IS_ROMAN (TYPE_3__*) ;
 scalar_t__ IS_ZERO (TYPE_3__*) ;
 int NUM_0 ;
 int NUM_9 ;
 int NUM_D ;
 int NUM_DEC ;
 scalar_t__ NUM_LSIGN_POST ;
 scalar_t__ NUM_LSIGN_PRE ;
 int elog (int ,char*,int,int,char*,int ) ;
 int strcpy (char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
NUM_numpart_to_char(NUMProc *Np, int id)
{
 int end;

 if (IS_ROMAN(Np->Num))
  return;
 Np->num_in = 0;





 if (Np->sign_wrote == 0 &&
  (Np->num_curr >= Np->out_pre_spaces || (IS_ZERO(Np->Num) && Np->Num->zero_start == Np->num_curr)) &&
  (IS_PREDEC_SPACE(Np) == 0 || (Np->last_relevant && *Np->last_relevant == '.')))
 {
  if (IS_LSIGN(Np->Num))
  {
   if (Np->Num->lsign == NUM_LSIGN_PRE)
   {
    if (Np->sign == '-')
     strcpy(Np->inout_p, Np->L_negative_sign);
    else
     strcpy(Np->inout_p, Np->L_positive_sign);
    Np->inout_p += strlen(Np->inout_p);
    Np->sign_wrote = 1;
   }
  }
  else if (IS_BRACKET(Np->Num))
  {
   *Np->inout_p = Np->sign == '+' ? ' ' : '<';
   ++Np->inout_p;
   Np->sign_wrote = 1;
  }
  else if (Np->sign == '+')
  {
   if (!IS_FILLMODE(Np->Num))
   {
    *Np->inout_p = ' ';
    ++Np->inout_p;
   }
   Np->sign_wrote = 1;
  }
  else if (Np->sign == '-')
  {
   *Np->inout_p = '-';
   ++Np->inout_p;
   Np->sign_wrote = 1;
  }
 }





 if (id == NUM_9 || id == NUM_0 || id == NUM_D || id == NUM_DEC)
 {
  if (Np->num_curr < Np->out_pre_spaces &&
   (Np->Num->zero_start > Np->num_curr || !IS_ZERO(Np->Num)))
  {



   if (!IS_FILLMODE(Np->Num))
   {
    *Np->inout_p = ' ';
    ++Np->inout_p;
   }
  }
  else if (IS_ZERO(Np->Num) &&
     Np->num_curr < Np->out_pre_spaces &&
     Np->Num->zero_start <= Np->num_curr)
  {



   *Np->inout_p = '0';
   ++Np->inout_p;
   Np->num_in = 1;
  }
  else
  {



   if (*Np->number_p == '.')
   {
    if (!Np->last_relevant || *Np->last_relevant != '.')
    {
     strcpy(Np->inout_p, Np->decimal);
     Np->inout_p += strlen(Np->inout_p);
    }




    else if (IS_FILLMODE(Np->Num) &&
       Np->last_relevant && *Np->last_relevant == '.')
    {
     strcpy(Np->inout_p, Np->decimal);
     Np->inout_p += strlen(Np->inout_p);
    }
   }
   else
   {



    if (Np->last_relevant && Np->number_p > Np->last_relevant &&
     id != NUM_0)
     ;




    else if (IS_PREDEC_SPACE(Np))
    {
     if (!IS_FILLMODE(Np->Num))
     {
      *Np->inout_p = ' ';
      ++Np->inout_p;
     }




     else if (Np->last_relevant && *Np->last_relevant == '.')
     {
      *Np->inout_p = '0';
      ++Np->inout_p;
     }
    }
    else
    {
     *Np->inout_p = *Np->number_p;
     ++Np->inout_p;
     Np->num_in = 1;
    }
   }

   if (*Np->number_p)
    ++Np->number_p;
  }

  end = Np->num_count + (Np->out_pre_spaces ? 1 : 0) + (IS_DECIMAL(Np->Num) ? 1 : 0);

  if (Np->last_relevant && Np->last_relevant == Np->number_p)
   end = Np->num_curr;

  if (Np->num_curr + 1 == end)
  {
   if (Np->sign_wrote == 1 && IS_BRACKET(Np->Num))
   {
    *Np->inout_p = Np->sign == '+' ? ' ' : '>';
    ++Np->inout_p;
   }
   else if (IS_LSIGN(Np->Num) && Np->Num->lsign == NUM_LSIGN_POST)
   {
    if (Np->sign == '-')
     strcpy(Np->inout_p, Np->L_negative_sign);
    else
     strcpy(Np->inout_p, Np->L_positive_sign);
    Np->inout_p += strlen(Np->inout_p);
   }
  }
 }

 ++Np->num_curr;
}
