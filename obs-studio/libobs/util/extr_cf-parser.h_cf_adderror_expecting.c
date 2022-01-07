
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_parser {int dummy; } ;


 int LEX_ERROR ;
 int cf_adderror (struct cf_parser*,char*,int ,char const*,int *,int *) ;

__attribute__((used)) static inline void cf_adderror_expecting(struct cf_parser *p,
      const char *expected)
{
 cf_adderror(p, "Expected '$1'", LEX_ERROR, expected, ((void*)0), ((void*)0));
}
