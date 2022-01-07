
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int token_t ;
struct TYPE_3__ {size_t flags; char const* fmt; char const* start; int line; scalar_t__ pos; scalar_t__ column; int next_token; int token; int prev_token; int * error; } ;
typedef TYPE_1__ scanner_t ;
typedef int json_error_t ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void scanner_init(scanner_t *s, json_error_t *error,
                         size_t flags, const char *fmt)
{
    s->error = error;
    s->flags = flags;
    s->fmt = s->start = fmt;
    memset(&s->prev_token, 0, sizeof(token_t));
    memset(&s->token, 0, sizeof(token_t));
    memset(&s->next_token, 0, sizeof(token_t));
    s->line = 1;
    s->column = 0;
    s->pos = 0;
}
