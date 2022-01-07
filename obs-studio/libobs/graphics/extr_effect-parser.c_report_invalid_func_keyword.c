
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct effect_parser {int cfp; } ;


 int LEX_ERROR ;
 int cf_adderror (int *,char*,int ,char const*,int *,int *) ;

__attribute__((used)) static inline void report_invalid_func_keyword(struct effect_parser *ep,
            const char *name, bool val)
{
 if (val)
  cf_adderror(&ep->cfp,
       "'$1' keyword cannot be used with a "
       "function",
       LEX_ERROR, name, ((void*)0), ((void*)0));
}
