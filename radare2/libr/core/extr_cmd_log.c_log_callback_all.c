
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int r_cons_printf (char*,int,char const*) ;

__attribute__((used)) static int log_callback_all (RCore *log, int count, const char *line) {
 r_cons_printf ("%d %s\n", count, line);
 return 0;
}
