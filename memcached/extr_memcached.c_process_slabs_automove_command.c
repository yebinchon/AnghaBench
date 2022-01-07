
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int value; } ;
typedef TYPE_1__ token_t ;
typedef int conn ;
struct TYPE_6__ {double slab_automove_ratio; unsigned int slab_automove; } ;


 int assert (int ) ;
 int out_string (int *,char*) ;
 int safe_strtod (int ,double*) ;
 int set_noreply_maybe (int *,TYPE_1__*,size_t const) ;
 TYPE_2__ settings ;
 scalar_t__ strcmp (int ,char*) ;
 unsigned int strtoul (int ,int *,int) ;

__attribute__((used)) static void process_slabs_automove_command(conn *c, token_t *tokens, const size_t ntokens) {
    unsigned int level;
    double ratio;

    assert(c != ((void*)0));

    set_noreply_maybe(c, tokens, ntokens);

    if (strcmp(tokens[2].value, "ratio") == 0) {
        if (ntokens < 5 || !safe_strtod(tokens[3].value, &ratio)) {
            out_string(c, "ERROR");
            return;
        }
        settings.slab_automove_ratio = ratio;
    } else {
        level = strtoul(tokens[2].value, ((void*)0), 10);
        if (level == 0) {
            settings.slab_automove = 0;
        } else if (level == 1 || level == 2) {
            settings.slab_automove = level;
        } else {
            out_string(c, "ERROR");
            return;
        }
    }
    out_string(c, "OK");
    return;
}
