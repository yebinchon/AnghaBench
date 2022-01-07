
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int command; int state; } ;
typedef TYPE_1__ POP3Transport ;
typedef int POP3COMMAND ;


 int STATE_NONE ;

__attribute__((used)) static void init_parser(POP3Transport *This, POP3COMMAND command)
{
    This->state = STATE_NONE;
    This->command = command;
}
