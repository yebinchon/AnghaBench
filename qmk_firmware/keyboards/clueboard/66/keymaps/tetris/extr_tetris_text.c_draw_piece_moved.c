
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int draw_piece (char,int,int,int ,char**) ;
 int move_piece_from_to (char**,int ,int,int) ;
 int temp_piece ;

__attribute__((used)) static void draw_piece_moved(char c, int x, int y, char piece[7][7], int oldxadd, int oldyadd) {
  move_piece_from_to(piece, temp_piece, oldxadd, oldyadd);
  draw_piece(c, x, y, temp_piece, piece);
}
