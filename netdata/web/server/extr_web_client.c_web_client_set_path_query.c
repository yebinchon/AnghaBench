
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct web_client {size_t url_path_length; char* url_search_path; } ;



__attribute__((used)) static void web_client_set_path_query(struct web_client *w, char *s, char *ptr) {
    w->url_path_length = (size_t)(ptr -s);

    w->url_search_path = ptr;
}
