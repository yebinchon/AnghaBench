
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ INT ;


 int has_duplicate (scalar_t__ const*,scalar_t__,scalar_t__) ;

__attribute__((used)) static INT get_nextvalue(const INT *array, INT to, INT max)
{
    INT i;
    for(i = 0; i < max; i++)
        if (has_duplicate(array, to, i) == -1) return i;
    return 0;
}
