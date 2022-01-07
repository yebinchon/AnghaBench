
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stream; } ;
typedef TYPE_1__ lex_t ;


 int stream_unget (int *,int) ;

__attribute__((used)) static void lex_unget(lex_t *lex, int c)
{
    stream_unget(&lex->stream, c);
}
