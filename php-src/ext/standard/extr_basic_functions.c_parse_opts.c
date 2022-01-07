
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char opt_char; int need_param; int * opt_name; } ;
typedef TYPE_1__ opt_struct ;


 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* safe_emalloc (int,unsigned int,int ) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int parse_opts(char * opts, opt_struct ** result)
{
 opt_struct * paras = ((void*)0);
 unsigned int i, count = 0;
 unsigned int opts_len = (unsigned int)strlen(opts);

 for (i = 0; i < opts_len; i++) {
  if ((opts[i] >= 48 && opts[i] <= 57) ||
   (opts[i] >= 65 && opts[i] <= 90) ||
   (opts[i] >= 97 && opts[i] <= 122)
  ) {
   count++;
  }
 }

 paras = safe_emalloc(sizeof(opt_struct), count, 0);
 memset(paras, 0, sizeof(opt_struct) * count);
 *result = paras;
 while ( (*opts >= 48 && *opts <= 57) ||
   (*opts >= 65 && *opts <= 90) ||
   (*opts >= 97 && *opts <= 122)
 ) {
  paras->opt_char = *opts;
  paras->need_param = *(++opts) == ':';
  paras->opt_name = ((void*)0);
  if (paras->need_param == 1) {
   opts++;
   if (*opts == ':') {
    paras->need_param++;
    opts++;
   }
  }
  paras++;
 }
 return count;
}
