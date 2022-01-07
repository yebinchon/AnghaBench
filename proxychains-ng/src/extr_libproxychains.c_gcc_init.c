
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INIT () ;

__attribute__((used)) __attribute__((constructor))
static void gcc_init(void) {
 INIT();
}
