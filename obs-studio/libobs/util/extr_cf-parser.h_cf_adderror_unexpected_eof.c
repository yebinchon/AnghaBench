
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_parser {int dummy; } ;


 int LEX_ERROR ;
 int cf_adderror (struct cf_parser*,char*,int ,int *,int *,int *) ;

__attribute__((used)) static inline void cf_adderror_unexpected_eof(struct cf_parser *p)
{
 cf_adderror(p, "Unexpected EOF", LEX_ERROR, ((void*)0), ((void*)0), ((void*)0));
}
