
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cur; char* start; char* end; } ;
typedef TYPE_1__ SB ;


 int out_of_memory () ;
 scalar_t__ realloc (char*,size_t) ;

__attribute__((used)) static void sb_grow(SB *sb, size_t need)
{
 size_t length = (size_t)(sb->cur - sb->start);
 size_t alloc = (size_t)(sb->end - sb->start);

 do {
  alloc *= 2;
 } while (alloc < length + need);

 sb->start = (char*) realloc(sb->start, alloc + 1);
 if (sb->start == ((void*)0))
  out_of_memory();
 sb->cur = sb->start + length;
 sb->end = sb->start + alloc;
}
