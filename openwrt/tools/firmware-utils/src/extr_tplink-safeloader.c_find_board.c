
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_info {int * id; } ;


 struct device_info* boards ;
 scalar_t__ strcasecmp (char const*,int *) ;

__attribute__((used)) static struct device_info *find_board(const char *id)
{
 struct device_info *board = ((void*)0);

 for (board = boards; board->id != ((void*)0); board++)
  if (strcasecmp(id, board->id) == 0)
   return board;

 return ((void*)0);
}
