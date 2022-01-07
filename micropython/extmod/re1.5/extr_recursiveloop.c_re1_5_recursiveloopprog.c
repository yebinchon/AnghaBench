
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int insts; } ;
struct TYPE_6__ {int begin; } ;
typedef TYPE_1__ Subject ;
typedef TYPE_2__ ByteProg ;


 int HANDLE_ANCHORED (int ,int) ;
 int recursiveloop (int ,int ,TYPE_1__*,char const**,int) ;

int
re1_5_recursiveloopprog(ByteProg *prog, Subject *input, const char **subp, int nsubp, int is_anchored)
{
 return recursiveloop(HANDLE_ANCHORED(prog->insts, is_anchored), input->begin, input, subp, nsubp);
}
