
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_pass {int fragment_program; int vertex_program; int name; } ;


 int bfree (int ) ;
 int da_free (int ) ;

__attribute__((used)) static inline void ep_pass_free(struct ep_pass *epp)
{
 bfree(epp->name);
 da_free(epp->vertex_program);
 da_free(epp->fragment_program);
}
