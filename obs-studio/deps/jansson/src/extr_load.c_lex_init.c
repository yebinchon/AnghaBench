
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t flags; int token; int saved_text; int stream; } ;
typedef TYPE_1__ lex_t ;
typedef int get_func ;


 int TOKEN_INVALID ;
 scalar_t__ strbuffer_init (int *) ;
 int stream_init (int *,int ,void*) ;

__attribute__((used)) static int lex_init(lex_t *lex, get_func get, size_t flags, void *data)
{
    stream_init(&lex->stream, get, data);
    if(strbuffer_init(&lex->saved_text))
        return -1;

    lex->flags = flags;
    lex->token = TOKEN_INVALID;
    return 0;
}
