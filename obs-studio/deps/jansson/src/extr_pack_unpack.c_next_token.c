
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char token; int column; scalar_t__ pos; scalar_t__ line; } ;
struct TYPE_5__ {char* fmt; int column; scalar_t__ pos; TYPE_1__ token; scalar_t__ line; TYPE_1__ next_token; TYPE_1__ prev_token; } ;
typedef TYPE_2__ scanner_t ;



__attribute__((used)) static void next_token(scanner_t *s)
{
    const char *t;
    s->prev_token = s->token;

    if(s->next_token.line) {
        s->token = s->next_token;
        s->next_token.line = 0;
        return;
    }

    t = s->fmt;
    s->column++;
    s->pos++;


    while(*t == ' ' || *t == '\t' || *t == '\n' || *t == ',' || *t == ':') {
        if(*t == '\n') {
            s->line++;
            s->column = 1;
        }
        else
            s->column++;

        s->pos++;
        t++;
    }

    s->token.token = *t;
    s->token.line = s->line;
    s->token.column = s->column;
    s->token.pos = s->pos;

    t++;
    s->fmt = t;
}
