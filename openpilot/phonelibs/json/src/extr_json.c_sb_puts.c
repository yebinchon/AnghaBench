
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SB ;


 int sb_put (int *,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void sb_puts(SB *sb, const char *str)
{
 sb_put(sb, str, strlen(str));
}
