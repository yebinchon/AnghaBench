
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {int * name; } ;


 struct board_info* boards ;
 scalar_t__ strcasecmp (char*,int *) ;

struct board_info *
find_board(char *name)
{
 struct board_info *ret;
 struct board_info *board;

 ret = ((void*)0);
 for (board = boards; board->name != ((void*)0); board++){
  if (strcasecmp(name, board->name) == 0) {
   ret = board;
   break;
  }
 };

 return ret;
}
