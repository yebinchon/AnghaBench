
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lexer {char const* start; char const* pos; char const* end; } ;
struct config_line {scalar_t__ type; } ;
struct TYPE_4__ {int strbuf; struct lexer lexer; } ;
struct TYPE_3__ {scalar_t__ sz; int * addr; } ;
struct config {TYPE_2__ parser; TYPE_1__ mapped; } ;


 scalar_t__ CONFIG_LINE_TYPE_SECTION ;
 int config_error (struct config*,char*) ;
 int find_section_end (struct config*) ;
 int free (struct config*) ;
 int lwan_strbuf_free (int *) ;
 int lwan_strbuf_init (int *) ;
 struct config* malloc (int) ;
 int memcpy (struct config*,struct config*,int) ;

struct config *config_isolate_section(struct config *current_conf,
                                      const struct config_line *current_line)
{
    struct lexer *lexer;
    struct config *isolated;
    const char *pos;

    if (current_line->type != CONFIG_LINE_TYPE_SECTION)
        return ((void*)0);

    isolated = malloc(sizeof(*isolated));
    if (!isolated)
        return ((void*)0);

    memcpy(isolated, current_conf, sizeof(*isolated));
    lwan_strbuf_init(&isolated->parser.strbuf);

    isolated->mapped.addr = ((void*)0);
    isolated->mapped.sz = 0;

    lexer = &isolated->parser.lexer;
    lexer->start = lexer->pos;

    pos = isolated->parser.lexer.pos;
    if (!find_section_end(isolated)) {
        lwan_strbuf_free(&isolated->parser.strbuf);
        free(isolated);

        config_error(current_conf,
                     "Could not find section end while trying to isolate");

        return ((void*)0);
    }

    lexer->end = lexer->pos;
    lexer->start = lexer->pos = pos;

    return isolated;
}
