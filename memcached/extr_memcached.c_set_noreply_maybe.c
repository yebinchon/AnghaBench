
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ value; } ;
typedef TYPE_1__ token_t ;
struct TYPE_6__ {int noreply; } ;
typedef TYPE_2__ conn ;


 scalar_t__ strcmp (scalar_t__,char*) ;

__attribute__((used)) static inline bool set_noreply_maybe(conn *c, token_t *tokens, size_t ntokens)
{
    int noreply_index = ntokens - 2;
    if (tokens[noreply_index].value
        && strcmp(tokens[noreply_index].value, "noreply") == 0) {
        c->noreply = 1;
    }
    return c->noreply;
}
