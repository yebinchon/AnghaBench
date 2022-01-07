
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_24__ {scalar_t__ type; char* character; TYPE_1__* key; } ;
struct TYPE_23__ {int lsign; int pre_lsign_num; int post; int pre; int zero_end; scalar_t__ zero_start; int flag; } ;
struct TYPE_22__ {int is_to_char; char* number; char* inout; char* last_relevant; int read_post; int read_dec; int out_pre_spaces; int sign; int sign_wrote; int num_count; char* number_p; char* inout_p; char* L_thousands_sep; char* L_currency_symbol; TYPE_3__* Num; scalar_t__ num_in; scalar_t__ num_curr; scalar_t__ read_pre; } ;
struct TYPE_21__ {int id; } ;
typedef int Oid ;
typedef TYPE_2__ NUMProc ;
typedef TYPE_3__ NUMDesc ;
typedef TYPE_4__ FormatNode ;


 int AMOUNT_TEST (int) ;
 int DEBUG_elog_output ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ IS_BRACKET (TYPE_3__*) ;
 scalar_t__ IS_DECIMAL (TYPE_3__*) ;
 scalar_t__ IS_EEEE (TYPE_3__*) ;
 scalar_t__ IS_FILLMODE (TYPE_3__*) ;
 int IS_LSIGN (TYPE_3__*) ;
 int IS_MINUS (TYPE_3__*) ;
 scalar_t__ IS_PLUS (TYPE_3__*) ;
 scalar_t__ IS_ROMAN (TYPE_3__*) ;
 scalar_t__ IS_ZERO (TYPE_3__*) ;
 int MemSet (TYPE_2__*,int ,int) ;
 scalar_t__ NODE_TYPE_ACTION ;
 scalar_t__ NODE_TYPE_END ;





 int NUM_F_BRACKET ;
 int NUM_F_FILLMODE ;
 int NUM_F_MINUS ;
 int NUM_F_PLUS ;
 int NUM_F_ROMAN ;


 scalar_t__ NUM_LSIGN_POST ;
 scalar_t__ NUM_LSIGN_PRE ;





 int NUM_eat_non_data_chars (TYPE_2__*,int,int) ;
 int NUM_numpart_from_char (TYPE_2__*,int,int) ;
 int NUM_numpart_to_char (TYPE_2__*,int) ;
 int NUM_prepare_locale (TYPE_2__*) ;


 scalar_t__ OVERLOAD_TEST ;
 int TH_LOWER ;
 int TH_UPPER ;
 char* asc_tolower_z (char*) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 char* get_last_relevant_decnum (char*) ;
 char* get_th (char*,int ) ;
 int memset (char*,char,int) ;
 int pg_mblen (char const*) ;
 int pg_mbstrlen (char const*) ;
 int sprintf (char const*,char*,char*) ;
 char* strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static char *
NUM_processor(FormatNode *node, NUMDesc *Num, char *inout,
     char *number, int input_len, int to_char_out_pre_spaces,
     int sign, bool is_to_char, Oid collid)
{
 FormatNode *n;
 NUMProc _Np,
      *Np = &_Np;
 const char *pattern;
 int pattern_len;

 MemSet(Np, 0, sizeof(NUMProc));

 Np->Num = Num;
 Np->is_to_char = is_to_char;
 Np->number = number;
 Np->inout = inout;
 Np->last_relevant = ((void*)0);
 Np->read_post = 0;
 Np->read_pre = 0;
 Np->read_dec = 0;

 if (Np->Num->zero_start)
  --Np->Num->zero_start;

 if (IS_EEEE(Np->Num))
 {
  if (!Np->is_to_char)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("\"EEEE\" not supported for input")));
  return strcpy(inout, number);
 }




 if (IS_ROMAN(Np->Num))
 {
  if (!Np->is_to_char)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("\"RN\" not supported for input")));

  Np->Num->lsign = Np->Num->pre_lsign_num = Np->Num->post =
   Np->Num->pre = Np->out_pre_spaces = Np->sign = 0;

  if (IS_FILLMODE(Np->Num))
  {
   Np->Num->flag = 0;
   Np->Num->flag |= NUM_F_FILLMODE;
  }
  else
   Np->Num->flag = 0;
  Np->Num->flag |= NUM_F_ROMAN;
 }




 if (is_to_char)
 {
  Np->sign = sign;


  if (IS_PLUS(Np->Num) || IS_MINUS(Np->Num))
  {
   if (IS_PLUS(Np->Num) && IS_MINUS(Np->Num) == 0)
    Np->sign_wrote = 0;
   else
    Np->sign_wrote = 1;
  }
  else
  {
   if (Np->sign != '-')
   {
    if (IS_BRACKET(Np->Num) && IS_FILLMODE(Np->Num))
     Np->Num->flag &= ~NUM_F_BRACKET;
    if (IS_MINUS(Np->Num))
     Np->Num->flag &= ~NUM_F_MINUS;
   }
   else if (Np->sign != '+' && IS_PLUS(Np->Num))
    Np->Num->flag &= ~NUM_F_PLUS;

   if (Np->sign == '+' && IS_FILLMODE(Np->Num) && IS_LSIGN(Np->Num) == 0)
    Np->sign_wrote = 1;
   else
    Np->sign_wrote = 0;

   if (Np->Num->lsign == NUM_LSIGN_PRE && Np->Num->pre == Np->Num->pre_lsign_num)
    Np->Num->lsign = NUM_LSIGN_POST;
  }
 }
 else
  Np->sign = 0;




 Np->num_count = Np->Num->post + Np->Num->pre - 1;

 if (is_to_char)
 {
  Np->out_pre_spaces = to_char_out_pre_spaces;

  if (IS_FILLMODE(Np->Num) && IS_DECIMAL(Np->Num))
  {
   Np->last_relevant = get_last_relevant_decnum(Np->number);





   if (Np->last_relevant && Np->Num->zero_end > Np->out_pre_spaces)
   {
    char *last_zero;

    last_zero = Np->number + (Np->Num->zero_end - Np->out_pre_spaces);
    if (Np->last_relevant < last_zero)
     Np->last_relevant = last_zero;
   }
  }

  if (Np->sign_wrote == 0 && Np->out_pre_spaces == 0)
   ++Np->num_count;
 }
 else
 {
  Np->out_pre_spaces = 0;
  *Np->number = ' ';
  *(Np->number + 1) = '\0';
 }

 Np->num_in = 0;
 Np->num_curr = 0;
 NUM_prepare_locale(Np);




 if (Np->is_to_char)
  Np->number_p = Np->number;
 else
  Np->number_p = Np->number + 1;

 for (n = node, Np->inout_p = Np->inout; n->type != NODE_TYPE_END; n++)
 {
  if (!Np->is_to_char)
  {





   if (OVERLOAD_TEST)
    break;
  }




  if (n->type == NODE_TYPE_ACTION)
  {
   switch (n->key->id)
   {
    case 140:
    case 141:
    case 137:
    case 138:
     if (Np->is_to_char)
     {
      NUM_numpart_to_char(Np, n->key->id);
      continue;
     }
     else
     {
      NUM_numpart_from_char(Np, n->key->id, input_len);
      break;
     }

    case 139:
     if (Np->is_to_char)
     {
      if (!Np->num_in)
      {
       if (IS_FILLMODE(Np->Num))
        continue;
       else
        *Np->inout_p = ' ';
      }
      else
       *Np->inout_p = ',';
     }
     else
     {
      if (!Np->num_in)
      {
       if (IS_FILLMODE(Np->Num))
        continue;
      }
      if (*Np->inout_p != ',')
       continue;
     }
     break;

    case 136:
     pattern = Np->L_thousands_sep;
     pattern_len = strlen(pattern);
     if (Np->is_to_char)
     {
      if (!Np->num_in)
      {
       if (IS_FILLMODE(Np->Num))
        continue;
       else
       {

        pattern_len = pg_mbstrlen(pattern);
        memset(Np->inout_p, ' ', pattern_len);
        Np->inout_p += pattern_len - 1;
       }
      }
      else
      {
       strcpy(Np->inout_p, pattern);
       Np->inout_p += pattern_len - 1;
      }
     }
     else
     {
      if (!Np->num_in)
      {
       if (IS_FILLMODE(Np->Num))
        continue;
      }







      if (AMOUNT_TEST(pattern_len) &&
       strncmp(Np->inout_p, pattern, pattern_len) == 0)
       Np->inout_p += pattern_len - 1;
      else
       continue;
     }
     break;

    case 135:
     pattern = Np->L_currency_symbol;
     if (Np->is_to_char)
     {
      strcpy(Np->inout_p, pattern);
      Np->inout_p += strlen(pattern) - 1;
     }
     else
     {
      NUM_eat_non_data_chars(Np, pg_mbstrlen(pattern), input_len);
      continue;
     }
     break;

    case 132:
     if (IS_FILLMODE(Np->Num))
     {
      strcpy(Np->inout_p, Np->number_p);
      Np->inout_p += strlen(Np->inout_p) - 1;
     }
     else
     {
      sprintf(Np->inout_p, "%15s", Np->number_p);
      Np->inout_p += strlen(Np->inout_p) - 1;
     }
     break;

    case 129:
     if (IS_FILLMODE(Np->Num))
     {
      strcpy(Np->inout_p, asc_tolower_z(Np->number_p));
      Np->inout_p += strlen(Np->inout_p) - 1;
     }
     else
     {
      sprintf(Np->inout_p, "%15s", asc_tolower_z(Np->number_p));
      Np->inout_p += strlen(Np->inout_p) - 1;
     }
     break;

    case 128:
     if (IS_ROMAN(Np->Num) || *Np->number == '#' ||
      Np->sign == '-' || IS_DECIMAL(Np->Num))
      continue;

     if (Np->is_to_char)
     {
      strcpy(Np->inout_p, get_th(Np->number, TH_LOWER));
      Np->inout_p += 1;
     }
     else
     {

      NUM_eat_non_data_chars(Np, 2, input_len);
      continue;
     }
     break;

    case 130:
     if (IS_ROMAN(Np->Num) || *Np->number == '#' ||
      Np->sign == '-' || IS_DECIMAL(Np->Num))
      continue;

     if (Np->is_to_char)
     {
      strcpy(Np->inout_p, get_th(Np->number, TH_UPPER));
      Np->inout_p += 1;
     }
     else
     {

      NUM_eat_non_data_chars(Np, 2, input_len);
      continue;
     }
     break;

    case 134:
     if (Np->is_to_char)
     {
      if (Np->sign == '-')
       *Np->inout_p = '-';
      else if (IS_FILLMODE(Np->Num))
       continue;
      else
       *Np->inout_p = ' ';
     }
     else
     {
      if (*Np->inout_p == '-')
       *Np->number = '-';
      else
      {
       NUM_eat_non_data_chars(Np, 1, input_len);
       continue;
      }
     }
     break;

    case 133:
     if (Np->is_to_char)
     {
      if (Np->sign == '+')
       *Np->inout_p = '+';
      else if (IS_FILLMODE(Np->Num))
       continue;
      else
       *Np->inout_p = ' ';
     }
     else
     {
      if (*Np->inout_p == '+')
       *Np->number = '+';
      else
      {
       NUM_eat_non_data_chars(Np, 1, input_len);
       continue;
      }
     }
     break;

    case 131:
     if (Np->is_to_char)
      *Np->inout_p = Np->sign;
     else
     {
      if (*Np->inout_p == '-')
       *Np->number = '-';
      else if (*Np->inout_p == '+')
       *Np->number = '+';
      else
      {
       NUM_eat_non_data_chars(Np, 1, input_len);
       continue;
      }
     }
     break;

    default:
     continue;
     break;
   }
  }
  else
  {






   if (Np->is_to_char)
   {
    strcpy(Np->inout_p, n->character);
    Np->inout_p += strlen(Np->inout_p);
   }
   else
   {
    Np->inout_p += pg_mblen(Np->inout_p);
   }
   continue;
  }
  Np->inout_p++;
 }

 if (Np->is_to_char)
 {
  *Np->inout_p = '\0';
  return Np->inout;
 }
 else
 {
  if (*(Np->number_p - 1) == '.')
   *(Np->number_p - 1) = '\0';
  else
   *Np->number_p = '\0';




  Np->Num->post = Np->read_post;




  return Np->number;
 }
}
