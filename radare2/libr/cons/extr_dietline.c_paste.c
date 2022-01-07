
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; int index; int length; } ;
struct TYPE_4__ {TYPE_1__ buffer; scalar_t__ clipboard; } ;


 TYPE_2__ I ;
 int enable_yank_pop ;
 int memcpy (char*,scalar_t__,int) ;
 int memmove (char*,char*,int) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void paste() {
 if (I.clipboard) {
  char *cursor = I.buffer.data + I.buffer.index;
  int dist = (I.buffer.data + I.buffer.length) - cursor;
  int len = strlen (I.clipboard);
  I.buffer.length += len;
  memmove (cursor + len, cursor, dist);
  memcpy (cursor, I.clipboard, len);
  I.buffer.index += len;
  enable_yank_pop = 1;
 }
}
