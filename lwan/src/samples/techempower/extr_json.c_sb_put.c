
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t cur; } ;
typedef TYPE_1__ SB ;


 int memcpy (size_t,char const*,size_t) ;
 int sb_need (TYPE_1__*,size_t) ;

__attribute__((used)) static void sb_put(SB *sb, const char *bytes, size_t count)
{
 sb_need(sb, count);
 memcpy(sb->cur, bytes, count);
 sb->cur += count;
}
