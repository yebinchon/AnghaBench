
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_parser {int funcs; int samplers; int structs; int params; int cfp; } ;


 int cf_parser_init (int *) ;
 int da_init (int ) ;

__attribute__((used)) static inline void shader_parser_init(struct shader_parser *sp)
{
 cf_parser_init(&sp->cfp);

 da_init(sp->params);
 da_init(sp->structs);
 da_init(sp->samplers);
 da_init(sp->funcs);
}
