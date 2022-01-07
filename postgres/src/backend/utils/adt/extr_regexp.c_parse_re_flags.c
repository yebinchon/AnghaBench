
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int text ;
struct TYPE_3__ {int cflags; int glob; } ;
typedef TYPE_1__ pg_re_flags ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int REG_ADVANCED ;
 int REG_EXPANDED ;
 int REG_EXTENDED ;
 int REG_ICASE ;
 int REG_NEWLINE ;
 int REG_NLANCH ;
 int REG_NLSTOP ;
 int REG_QUOTE ;
 char* VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char) ;

__attribute__((used)) static void
parse_re_flags(pg_re_flags *flags, text *opts)
{

 flags->cflags = REG_ADVANCED;
 flags->glob = 0;

 if (opts)
 {
  char *opt_p = VARDATA_ANY(opts);
  int opt_len = VARSIZE_ANY_EXHDR(opts);
  int i;

  for (i = 0; i < opt_len; i++)
  {
   switch (opt_p[i])
   {
    case 'g':
     flags->glob = 1;
     break;
    case 'b':
     flags->cflags &= ~(REG_ADVANCED | REG_EXTENDED | REG_QUOTE);
     break;
    case 'c':
     flags->cflags &= ~REG_ICASE;
     break;
    case 'e':
     flags->cflags |= REG_EXTENDED;
     flags->cflags &= ~(REG_ADVANCED | REG_QUOTE);
     break;
    case 'i':
     flags->cflags |= REG_ICASE;
     break;
    case 'm':
    case 'n':
     flags->cflags |= REG_NEWLINE;
     break;
    case 'p':
     flags->cflags |= REG_NLSTOP;
     flags->cflags &= ~REG_NLANCH;
     break;
    case 'q':
     flags->cflags |= REG_QUOTE;
     flags->cflags &= ~(REG_ADVANCED | REG_EXTENDED);
     break;
    case 's':
     flags->cflags &= ~REG_NEWLINE;
     break;
    case 't':
     flags->cflags &= ~REG_EXPANDED;
     break;
    case 'w':
     flags->cflags &= ~REG_NLSTOP;
     flags->cflags |= REG_NLANCH;
     break;
    case 'x':
     flags->cflags |= REG_EXPANDED;
     break;
    default:
     ereport(ERROR,
       (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
        errmsg("invalid regular expression option: \"%c\"",
         opt_p[i])));
     break;
   }
  }
 }
}
