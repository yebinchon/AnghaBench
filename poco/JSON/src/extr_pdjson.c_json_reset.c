
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stack_top; char* errmsg; int flags; scalar_t__ ntokens; } ;
typedef TYPE_1__ json_stream ;


 int JSON_FLAG_ERROR ;

void json_reset(json_stream *json)
{
    json->stack_top = -1;
    json->ntokens = 0;
    json->flags &= ~JSON_FLAG_ERROR;
    json->errmsg[0] = '\0';
}
