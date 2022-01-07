
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_parser {int dummy; } ;


 int LEX_ERROR ;
 int cf_adderror (struct cf_parser*,char*,int ,int *,int *,int *) ;

__attribute__((used)) static inline void cf_adderror_syntax_error(struct cf_parser *p)
{
 cf_adderror(p, "Syntax error", LEX_ERROR, ((void*)0), ((void*)0), ((void*)0));
}
