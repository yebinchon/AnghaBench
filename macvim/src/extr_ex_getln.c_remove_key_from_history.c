
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char char_u ;
struct TYPE_2__ {char* hisstr; } ;


 size_t HIST_CMD ;
 int STRMOVE (char*,char*) ;
 scalar_t__ STRNCMP (char*,char*,int) ;
 int* hisidx ;
 TYPE_1__** history ;
 int isalpha (char) ;
 int vim_iswhite (char) ;
 char* vim_strchr (char*,char) ;

void
remove_key_from_history()
{
    char_u *p;
    int i;

    i = hisidx[HIST_CMD];
    if (i < 0)
 return;
    p = history[HIST_CMD][i].hisstr;
    if (p != ((void*)0))
 for ( ; *p; ++p)
     if (STRNCMP(p, "key", 3) == 0 && !isalpha(p[3]))
     {
  p = vim_strchr(p + 3, '=');
  if (p == ((void*)0))
      break;
  ++p;
  for (i = 0; p[i] && !vim_iswhite(p[i]); ++i)
      if (p[i] == '\\' && p[i + 1])
   ++i;
  STRMOVE(p, p + i);
  --p;
     }
}
