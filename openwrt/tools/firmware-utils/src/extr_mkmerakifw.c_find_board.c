
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {int * id; } ;


 struct board_info* boards ;
 scalar_t__ strcasecmp (char const*,int *) ;

__attribute__((used)) static const struct board_info *find_board(const char *id)
{
 const struct board_info *ret;
 const struct board_info *board;

 ret = ((void*)0);
 for (board = boards; board->id != ((void*)0); board++) {
  if (strcasecmp(id, board->id) == 0) {
   ret = board;
   break;
  }
 }

 return ret;
}
