
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void add_piece_to_board(char piece[7][7], char board[20][10], int x, int y) {
  for (int py = 0; py < 7; py++) {
    for (int px = 0; px < 7; px++) {
      if (piece[py][px]) {
        board[py + y][px + x] = piece[py][px];
      }
    }
  }
}
