
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int K_HOR_SCROLLBAR ;
 int K_IGNORE ;
 int K_VER_SCROLLBAR ;
 int safe_vgetc () ;

int
plain_vgetc()
{
    int c;

    do
    {
 c = safe_vgetc();
    } while (c == K_IGNORE || c == K_VER_SCROLLBAR || c == K_HOR_SCROLLBAR);
    return c;
}
