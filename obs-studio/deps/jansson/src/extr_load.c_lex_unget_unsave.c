
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int saved_text; int stream; } ;
typedef TYPE_1__ lex_t ;


 int STREAM_STATE_EOF ;
 int STREAM_STATE_ERROR ;
 int assert (int) ;
 char strbuffer_pop (int *) ;
 int stream_unget (int *,int) ;

__attribute__((used)) static void lex_unget_unsave(lex_t *lex, int c)
{
    if(c != STREAM_STATE_EOF && c != STREAM_STATE_ERROR) {





        char d;

        stream_unget(&lex->stream, c);

        d =

            strbuffer_pop(&lex->saved_text);
        assert(c == d);
    }
}
