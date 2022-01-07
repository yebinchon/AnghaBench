
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prev_token; int token; int next_token; } ;
typedef TYPE_1__ scanner_t ;



__attribute__((used)) static void prev_token(scanner_t *s)
{
    s->next_token = s->token;
    s->token = s->prev_token;
}
