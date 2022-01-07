
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct web_client {char separator; int url_path_length; } ;


 char* strchr (char*,char) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int web_client_set_path_query (struct web_client*,char*,char*) ;

void web_client_split_path_query(struct web_client *w, char *s) {

    char *ptr = strchr(s, '?');
    if(ptr) {
        w->separator = '?';
        web_client_set_path_query(w, s, ptr);
        return;
    }







    char *moveme = s;
    while (moveme) {
        ptr = strchr(moveme, '%');
        if(ptr) {
            char *test = (ptr+1);
            if (!strncmp(test, "3f", 2) || !strncmp(test, "3F", 2)) {
                w->separator = *ptr;
                web_client_set_path_query(w, s, ptr);
                return;
            }
            ptr++;
        }

        moveme = ptr;
    }

    w->separator = 0x00;
    w->url_path_length = strlen(s);
}
