
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child_exited ;

__attribute__((used)) static void
child_handler(int sig) {
    child_exited = 1;
}
