
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {int * id; } ;


 struct board_info* boards ;
 scalar_t__ strcasecmp (char*,int *) ;

struct board_info *find_board(char *id)
{
 struct board_info *board;

 for (board = boards; board->id != ((void*)0); board++)
  if (strcasecmp(id, board->id) == 0)
   return board;

 return ((void*)0);
}
