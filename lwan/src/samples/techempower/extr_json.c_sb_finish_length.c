
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cur; char* start; } ;
typedef TYPE_1__ SB ;


 int assert (int) ;
 size_t strlen (char*) ;

__attribute__((used)) static char *sb_finish_length(SB *sb, size_t *length)
{
 *sb->cur = 0;
 assert(sb->start <= sb->cur && strlen(sb->start) == (size_t)(sb->cur - sb->start));
 *length = (size_t)(sb->cur - sb->start);
 return sb->start;
}
