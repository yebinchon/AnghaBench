
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RCore ;


 int free (char*) ;
 char* get_graph_commands (int *,int ) ;
 int r_cons_break_pop () ;
 int r_cons_break_push (int *,int *) ;
 scalar_t__ r_cons_is_breaked () ;
 int r_core_cmd0 (int *,char*) ;
 int r_return_if_fail (int *) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;

__attribute__((used)) static void __generate_graph (RCore *c, ut64 off) {
        r_return_if_fail (c);
        char *ptr = get_graph_commands (c, off);
 char *str = ptr;
        r_cons_break_push (((void*)0), ((void*)0));
        if (str) {
                for (;;) {
                        if (r_cons_is_breaked ()) {
                                break;
                        }
                        char *eol = strchr (ptr, '\n');
                        if (eol) {
                                *eol = '\0';
                        }
                        if (*ptr) {
                                char *p = strdup (ptr);
                                if (!p) {
                                        free (str);
                                        return;
                                }
                                r_core_cmd0 (c, p);
                                free (p);
                        }
                        if (!eol) {
                                break;
                        }
                        ptr = eol + 1;
                }
  free (str);
        }
        r_cons_break_pop ();
}
