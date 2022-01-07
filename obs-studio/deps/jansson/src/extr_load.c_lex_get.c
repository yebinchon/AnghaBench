
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stream; } ;
typedef TYPE_1__ lex_t ;
typedef int json_error_t ;


 int stream_get (int *,int *) ;

__attribute__((used)) static int lex_get(lex_t *lex, json_error_t *error)
{
    return stream_get(&lex->stream, error);
}
