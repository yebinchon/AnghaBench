
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stream; } ;
typedef TYPE_1__ lex_t ;
typedef int json_error_t ;


 int STREAM_STATE_EOF ;
 int STREAM_STATE_ERROR ;
 int lex_save (TYPE_1__*,int) ;
 int stream_get (int *,int *) ;

__attribute__((used)) static int lex_get_save(lex_t *lex, json_error_t *error)
{
    int c = stream_get(&lex->stream, error);
    if(c != STREAM_STATE_EOF && c != STREAM_STATE_ERROR)
        lex_save(lex, c);
    return c;
}
