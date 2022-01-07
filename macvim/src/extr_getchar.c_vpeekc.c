
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int old_char ;
 int vgetorpeek (int ) ;

int
vpeekc()
{
    if (old_char != -1)
 return old_char;
    return vgetorpeek(FALSE);
}
