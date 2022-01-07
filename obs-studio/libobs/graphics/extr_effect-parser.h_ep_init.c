
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct effect_parser {int cfp; int * cur_pass; int tokens; int files; int techniques; int samplers; int funcs; int structs; int params; } ;


 int cf_parser_init (int *) ;
 int da_init (int ) ;

__attribute__((used)) static inline void ep_init(struct effect_parser *ep)
{
 da_init(ep->params);
 da_init(ep->structs);
 da_init(ep->funcs);
 da_init(ep->samplers);
 da_init(ep->techniques);
 da_init(ep->files);
 da_init(ep->tokens);

 ep->cur_pass = ((void*)0);
 cf_parser_init(&ep->cfp);
}
