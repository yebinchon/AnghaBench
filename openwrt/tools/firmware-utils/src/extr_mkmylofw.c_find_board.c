
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpx_board {int * model; } ;


 struct cpx_board* boards ;
 scalar_t__ strcasecmp (char*,int *) ;

struct cpx_board *
find_board(char *model){
 struct cpx_board *board;
 struct cpx_board *tmp;

 board = ((void*)0);
 for (tmp = boards; tmp->model != ((void*)0); tmp++){
  if (strcasecmp(model, tmp->model) == 0) {
   board = tmp;
   break;
  }
 };

 return board;
}
