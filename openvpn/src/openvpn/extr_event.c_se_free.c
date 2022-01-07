
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_set {struct se_set* args; } ;
struct event_set {int dummy; } ;


 int free (struct se_set*) ;

__attribute__((used)) static void
se_free(struct event_set *es)
{
    struct se_set *ses = (struct se_set *) es;
    free(ses->args);
    free(ses);
}
