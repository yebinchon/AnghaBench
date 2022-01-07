
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ APPLYSTATEFUNC ;



__attribute__((used)) static unsigned int num_handlers(const APPLYSTATEFUNC *funcs)
{
    unsigned int i;
    for(i = 0; funcs[i]; i++);
    return i;
}
