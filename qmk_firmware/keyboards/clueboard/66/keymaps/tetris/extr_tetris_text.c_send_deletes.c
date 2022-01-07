
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tetris_send_delete () ;

__attribute__((used)) static void send_deletes(int deletes) {
  for (int i = 0; i < deletes; i++) {
    tetris_send_delete();
  }
}
