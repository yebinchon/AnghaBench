
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cur; } ;
typedef TYPE_1__ SB ;


 int memcpy (int,char const*,int) ;
 int sb_need (TYPE_1__*,int) ;

__attribute__((used)) static void sb_put(SB *sb, const char *bytes, int count)
{
 sb_need(sb, count);
 memcpy(sb->cur, bytes, count);
 sb->cur += count;
}
