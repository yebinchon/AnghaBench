
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TParser ;


 scalar_t__ p_isalpha (int *) ;
 scalar_t__ p_isascii (int *) ;

__attribute__((used)) static int
p_isasclet(TParser *prs)
{
 return (p_isascii(prs) && p_isalpha(prs)) ? 1 : 0;
}
