
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_parser {int dummy; } ;


 int LEX_ERROR ;
 int cf_adderror (struct cf_parser*,char*,int ,char const*,int *,int *) ;

__attribute__((used)) static inline void err_existing_name(struct cf_parser *cfp, const char *name)
{
 cf_adderror(cfp, "'$1' already exists", LEX_ERROR, name, ((void*)0), ((void*)0));
}
