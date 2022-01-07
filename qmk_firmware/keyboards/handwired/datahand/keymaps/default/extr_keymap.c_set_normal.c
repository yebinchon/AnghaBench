
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NORMAL ;
 int NORMAL_THUMB_RETURN_COMMAND ;
 int layer_move (int ) ;
 int layer_set (int,int ) ;

__attribute__((used)) static void set_normal(void) {
  layer_move(NORMAL);






  layer_set(1, NORMAL);
}
