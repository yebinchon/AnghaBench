
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int col; scalar_t__ lnum; } ;
typedef TYPE_1__ pos_T ;
typedef int colnr_T ;
typedef char char_u ;
struct TYPE_7__ {TYPE_1__ w_cursor; } ;


 int CPO_LISP ;
 char NUL ;
 TYPE_5__* curwin ;
 TYPE_1__* findmatch (int *,char) ;
 int get_indent () ;
 scalar_t__ lbr_chartabsize (char*,char*,int) ;
 scalar_t__ lbr_chartabsize_adv (char*,char**,int) ;
 scalar_t__ linewhite (scalar_t__) ;
 scalar_t__ lisp_match (char*) ;
 scalar_t__ ltp (TYPE_1__*,TYPE_1__*) ;
 char* ml_get_curline () ;
 int p_cpo ;
 scalar_t__ vim_iswhite (char) ;
 int * vim_strchr (int ,int ) ;

int
get_lisp_indent()
{
    pos_T *pos, realpos, paren;
    int amount;
    char_u *that;
    colnr_T col;
    colnr_T firsttry;
    int parencount, quotecount;
    int vi_lisp;


    vi_lisp = (vim_strchr(p_cpo, CPO_LISP) != ((void*)0));

    realpos = curwin->w_cursor;
    curwin->w_cursor.col = 0;

    if ((pos = findmatch(((void*)0), '(')) == ((void*)0))
 pos = findmatch(((void*)0), '[');
    else
    {
 paren = *pos;
 pos = findmatch(((void*)0), '[');
 if (pos == ((void*)0) || ltp(pos, &paren))
     pos = &paren;
    }
    if (pos != ((void*)0))
    {


 amount = -1;
 parencount = 0;

 while (--curwin->w_cursor.lnum >= pos->lnum)
 {
     if (linewhite(curwin->w_cursor.lnum))
  continue;
     for (that = ml_get_curline(); *that != NUL; ++that)
     {
  if (*that == ';')
  {
      while (*(that + 1) != NUL)
   ++that;
      continue;
  }
  if (*that == '\\')
  {
      if (*(that + 1) != NUL)
   ++that;
      continue;
  }
  if (*that == '"' && *(that + 1) != NUL)
  {
      while (*++that && *that != '"')
      {

   if (*that == '\\')
   {
       if (*++that == NUL)
    break;
       if (that[1] == NUL)
       {
    ++that;
    break;
       }
   }
      }
  }
  if (*that == '(' || *that == '[')
      ++parencount;
  else if (*that == ')' || *that == ']')
      --parencount;
     }
     if (parencount == 0)
     {
  amount = get_indent();
  break;
     }
 }

 if (amount == -1)
 {
     curwin->w_cursor.lnum = pos->lnum;
     curwin->w_cursor.col = pos->col;
     col = pos->col;

     that = ml_get_curline();

     if (vi_lisp && get_indent() == 0)
  amount = 2;
     else
     {
  char_u *line = that;

  amount = 0;
  while (*that && col)
  {
      amount += lbr_chartabsize_adv(line, &that, (colnr_T)amount);
      col--;
  }
  if (!vi_lisp && (*that == '(' || *that == '[')
            && lisp_match(that + 1))
      amount += 2;
  else
  {
      that++;
      amount++;
      firsttry = amount;

      while (vim_iswhite(*that))
      {
   amount += lbr_chartabsize(line, that, (colnr_T)amount);
   ++that;
      }

      if (*that && *that != ';')
      {


   if (!vi_lisp && *that != '(' && *that != '[')
       firsttry++;

   parencount = 0;
   quotecount = 0;

   if (vi_lisp
    || (*that != '"'
        && *that != '\''
        && *that != '#'
        && (*that < '0' || *that > '9')))
   {
       while (*that
        && (!vim_iswhite(*that)
     || quotecount
     || parencount)
        && (!((*that == '(' || *that == '[')
         && !quotecount
         && !parencount
         && vi_lisp)))
       {
    if (*that == '"')
        quotecount = !quotecount;
    if ((*that == '(' || *that == '[')
              && !quotecount)
        ++parencount;
    if ((*that == ')' || *that == ']')
              && !quotecount)
        --parencount;
    if (*that == '\\' && *(that+1) != NUL)
        amount += lbr_chartabsize_adv(
      line, &that, (colnr_T)amount);
    amount += lbr_chartabsize_adv(
      line, &that, (colnr_T)amount);
       }
   }
   while (vim_iswhite(*that))
   {
       amount += lbr_chartabsize(
       line, that, (colnr_T)amount);
       that++;
   }
   if (!*that || *that == ';')
       amount = firsttry;
      }
  }
     }
 }
    }
    else
 amount = 0;

    curwin->w_cursor = realpos;

    return amount;
}
