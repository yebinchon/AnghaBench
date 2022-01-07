
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; size_t size; scalar_t__ pos; } ;
typedef TYPE_1__ cursor_t ;


 int FUZZ_ASSERT (char*) ;
 scalar_t__ malloc (size_t) ;

cursor_t cursor_create(size_t size)
{
  cursor_t cursor;
  cursor.buf = (char*)malloc(size);
  cursor.size = size;
  cursor.pos = 0;
  FUZZ_ASSERT(cursor.buf);
  return cursor;
}
