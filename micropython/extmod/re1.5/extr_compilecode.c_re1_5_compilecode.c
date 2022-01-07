
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* insts; scalar_t__ len; scalar_t__ bytelen; scalar_t__ sub; } ;
typedef TYPE_1__ ByteProg ;


 int Any ;
 int Jmp ;
 int Match ;
 int RSplit ;
 void* Save ;
 char* _compilecode (char const*,TYPE_1__*,int ) ;

int re1_5_compilecode(ByteProg *prog, const char *re)
{
    prog->len = 0;
    prog->bytelen = 0;
    prog->sub = 0;




    prog->insts[prog->bytelen++] = RSplit;
    prog->insts[prog->bytelen++] = 3;
    prog->insts[prog->bytelen++] = Any;
    prog->insts[prog->bytelen++] = Jmp;
    prog->insts[prog->bytelen++] = -5;
    prog->len += 3;

    prog->insts[prog->bytelen++] = Save;
    prog->insts[prog->bytelen++] = 0;
    prog->len++;

    re = _compilecode(re, prog, 0);
    if (re == ((void*)0) || *re) return 1;

    prog->insts[prog->bytelen++] = Save;
    prog->insts[prog->bytelen++] = 1;
    prog->len++;

    prog->insts[prog->bytelen++] = Match;
    prog->len++;

    return 0;
}
