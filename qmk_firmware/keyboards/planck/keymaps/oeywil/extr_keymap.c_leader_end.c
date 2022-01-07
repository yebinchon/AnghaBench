
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLAY_SONG (int ) ;
 int defsong ;
 int failed ;
 int gamesong ;
 scalar_t__ leader_layer_def ;
 scalar_t__ leader_layer_game ;
 scalar_t__ leader_succeed ;

void leader_end(void) {
  if (leader_succeed) {

  } else if (leader_layer_game) {



  } else if (leader_layer_def) {



  } else {



  }
}
