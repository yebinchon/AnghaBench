
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int value; } ;
typedef TYPE_1__ token_t ;
typedef int conn ;
struct TYPE_6__ {unsigned int verbose; } ;


 unsigned int MAX_VERBOSITY_LEVEL ;
 int assert (int ) ;
 int out_string (int *,char*) ;
 int set_noreply_maybe (int *,TYPE_1__*,size_t const) ;
 TYPE_2__ settings ;
 unsigned int strtoul (int ,int *,int) ;

__attribute__((used)) static void process_verbosity_command(conn *c, token_t *tokens, const size_t ntokens) {
    unsigned int level;

    assert(c != ((void*)0));

    set_noreply_maybe(c, tokens, ntokens);

    level = strtoul(tokens[1].value, ((void*)0), 10);
    settings.verbose = level > MAX_VERBOSITY_LEVEL ? MAX_VERBOSITY_LEVEL : level;
    out_string(c, "OK");
    return;
}
