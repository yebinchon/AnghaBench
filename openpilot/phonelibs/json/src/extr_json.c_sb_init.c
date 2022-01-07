
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* start; char* cur; char* end; } ;
typedef TYPE_1__ SB ;


 scalar_t__ malloc (int) ;
 int out_of_memory () ;

__attribute__((used)) static void sb_init(SB *sb)
{
 sb->start = (char*) malloc(17);
 if (sb->start == ((void*)0))
  out_of_memory();
 sb->cur = sb->start;
 sb->end = sb->start + 16;
}
