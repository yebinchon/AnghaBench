
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sync () ;

__attribute__((used)) static void *syncthread(void *dummy) {
  while (1) {
    sync();
  }
}
