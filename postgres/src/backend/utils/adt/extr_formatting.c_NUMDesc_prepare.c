
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ type; TYPE_1__* key; } ;
struct TYPE_18__ {int need_locale; int flag; int lsign; scalar_t__ pre; scalar_t__ pre_lsign_num; scalar_t__ post; scalar_t__ zero_end; int zero_start; int multi; } ;
struct TYPE_17__ {int id; } ;
typedef TYPE_2__ NUMDesc ;
typedef TYPE_3__ FormatNode ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int IS_BLANK (TYPE_2__*) ;
 int IS_BRACKET (TYPE_2__*) ;
 int IS_DECIMAL (TYPE_2__*) ;
 scalar_t__ IS_EEEE (TYPE_2__*) ;
 int IS_FILLMODE (TYPE_2__*) ;
 int IS_LSIGN (TYPE_2__*) ;
 int IS_MINUS (TYPE_2__*) ;
 int IS_MULTI (TYPE_2__*) ;
 int IS_PLUS (TYPE_2__*) ;
 int IS_ROMAN (TYPE_2__*) ;
 int IS_ZERO (TYPE_2__*) ;
 scalar_t__ NODE_TYPE_ACTION ;







 int NUM_F_BLANK ;
 int NUM_F_BRACKET ;
 int NUM_F_DECIMAL ;
 int NUM_F_EEEE ;
 int NUM_F_FILLMODE ;
 int NUM_F_LDECIMAL ;
 int NUM_F_LSIGN ;
 int NUM_F_MINUS ;
 int NUM_F_MINUS_POST ;
 int NUM_F_MULTI ;
 int NUM_F_PLUS ;
 int NUM_F_PLUS_POST ;
 int NUM_F_ROMAN ;
 int NUM_F_ZERO ;


 int NUM_LSIGN_NONE ;
 int NUM_LSIGN_POST ;
 int NUM_LSIGN_PRE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;

__attribute__((used)) static void
NUMDesc_prepare(NUMDesc *num, FormatNode *n)
{
 if (n->type != NODE_TYPE_ACTION)
  return;

 if (IS_EEEE(num) && n->key->id != 139)
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("\"EEEE\" must be the last pattern used")));

 switch (n->key->id)
 {
  case 143:
   if (IS_BRACKET(num))
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("\"9\" must be ahead of \"PR\"")));
   if (IS_MULTI(num))
   {
    ++num->multi;
    break;
   }
   if (IS_DECIMAL(num))
    ++num->post;
   else
    ++num->pre;
   break;

  case 144:
   if (IS_BRACKET(num))
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("\"0\" must be ahead of \"PR\"")));
   if (!IS_ZERO(num) && !IS_DECIMAL(num))
   {
    num->flag |= NUM_F_ZERO;
    num->zero_start = num->pre + 1;
   }
   if (!IS_DECIMAL(num))
    ++num->pre;
   else
    ++num->post;

   num->zero_end = num->pre + num->post;
   break;

  case 142:
   if (num->pre == 0 && num->post == 0 && (!IS_ZERO(num)))
    num->flag |= NUM_F_BLANK;
   break;

  case 141:
   num->flag |= NUM_F_LDECIMAL;
   num->need_locale = 1;

  case 140:
   if (IS_DECIMAL(num))
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("multiple decimal points")));
   if (IS_MULTI(num))
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("cannot use \"V\" and decimal point together")));
   num->flag |= NUM_F_DECIMAL;
   break;

  case 138:
   num->flag |= NUM_F_FILLMODE;
   break;

  case 131:
   if (IS_LSIGN(num))
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("cannot use \"S\" twice")));
   if (IS_PLUS(num) || IS_MINUS(num) || IS_BRACKET(num))
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("cannot use \"S\" and \"PL\"/\"MI\"/\"SG\"/\"PR\" together")));
   if (!IS_DECIMAL(num))
   {
    num->lsign = NUM_LSIGN_PRE;
    num->pre_lsign_num = num->pre;
    num->need_locale = 1;
    num->flag |= NUM_F_LSIGN;
   }
   else if (num->lsign == NUM_LSIGN_NONE)
   {
    num->lsign = NUM_LSIGN_POST;
    num->need_locale = 1;
    num->flag |= NUM_F_LSIGN;
   }
   break;

  case 135:
   if (IS_LSIGN(num))
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("cannot use \"S\" and \"MI\" together")));
   num->flag |= NUM_F_MINUS;
   if (IS_DECIMAL(num))
    num->flag |= NUM_F_MINUS_POST;
   break;

  case 134:
   if (IS_LSIGN(num))
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("cannot use \"S\" and \"PL\" together")));
   num->flag |= NUM_F_PLUS;
   if (IS_DECIMAL(num))
    num->flag |= NUM_F_PLUS_POST;
   break;

  case 130:
   if (IS_LSIGN(num))
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("cannot use \"S\" and \"SG\" together")));
   num->flag |= NUM_F_MINUS;
   num->flag |= NUM_F_PLUS;
   break;

  case 133:
   if (IS_LSIGN(num) || IS_PLUS(num) || IS_MINUS(num))
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("cannot use \"PR\" and \"S\"/\"PL\"/\"MI\"/\"SG\" together")));
   num->flag |= NUM_F_BRACKET;
   break;

  case 128:
  case 132:
   num->flag |= NUM_F_ROMAN;
   break;

  case 136:
  case 137:
   num->need_locale = 1;
   break;

  case 129:
   if (IS_DECIMAL(num))
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("cannot use \"V\" and decimal point together")));
   num->flag |= NUM_F_MULTI;
   break;

  case 139:
   if (IS_EEEE(num))
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("cannot use \"EEEE\" twice")));
   if (IS_BLANK(num) || IS_FILLMODE(num) || IS_LSIGN(num) ||
    IS_BRACKET(num) || IS_MINUS(num) || IS_PLUS(num) ||
    IS_ROMAN(num) || IS_MULTI(num))
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("\"EEEE\" is incompatible with other formats"),
       errdetail("\"EEEE\" may only be used together with digit and decimal point patterns.")));
   num->flag |= NUM_F_EEEE;
   break;
 }
}
