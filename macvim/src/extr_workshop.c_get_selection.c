
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int lnum; int col; } ;
typedef TYPE_2__ pos_T ;
struct TYPE_6__ {char vi_mode; TYPE_2__ vi_end; TYPE_2__ vi_start; } ;
struct TYPE_8__ {TYPE_1__ b_visual; } ;
typedef TYPE_3__ buf_T ;


 int BUFSIZ ;
 char NUL ;
 char* append_selection (int ,char*,int*,int*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ ml_get (int) ;
 scalar_t__ ml_get_pos (TYPE_2__*) ;
 scalar_t__ realloc (char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static char *
get_selection(
 buf_T *buf)
{
    pos_T *start;
    pos_T *end;
    char *lp;
    int llen;
    char *sp;
    int slen;
    int size;
    char *new_sp;
    int lnum;

    if (buf->b_visual.vi_mode == 'v')
    {
 start = &buf->b_visual.vi_start;
 end = &buf->b_visual.vi_end;
 if (start->lnum == end->lnum)
 {

     lp = (char *) ml_get_pos(start);
     llen = end->col - start->col + 1;
     sp = (char *) malloc(llen + 1);
     if (sp != ((void*)0))
     {
  strncpy(sp, lp, llen);
  sp[llen] = NUL;
     }
 }
 else
 {

     lp = (char *) ml_get_pos(start);
     llen = strlen(lp);
     sp = (char *) malloc(BUFSIZ + llen);
     if (sp != ((void*)0))
     {
  size = BUFSIZ + llen;
  strcpy(sp, lp);
  sp[llen] = '\n';
  slen = llen + 1;

  lnum = start->lnum + 1;
  while (lnum < end->lnum)
      sp = append_selection(lnum++, sp, &size, &slen);

  lp = (char *) ml_get(end->lnum);
  llen = end->col + 1;
  if ((slen + llen) >= size)
  {
      new_sp = (char *)
   realloc(sp, slen + llen + 1);
      if (new_sp != ((void*)0))
      {
   size += llen + 1;
   sp = new_sp;
      }
  }
  if ((slen + llen) < size)
  {
      strncpy(&sp[slen], lp, llen);
      sp[slen + llen] = NUL;
  }

     }
 }
    }
    else
 sp = ((void*)0);

    return sp;
}
