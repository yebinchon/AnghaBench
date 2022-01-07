
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libgdbr_t ;


 int _isbreaked ;

__attribute__((used)) static void gdbr_break_process(void *arg) {
 libgdbr_t *g = (libgdbr_t *)arg;
 (void)g;
 _isbreaked = 1;
}
