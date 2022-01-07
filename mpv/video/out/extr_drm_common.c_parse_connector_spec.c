
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;


 int atoi (char const*) ;
 char* strchr (char const*,char) ;
 char* talloc_strdup (struct mp_log*,char const*) ;

__attribute__((used)) static void parse_connector_spec(struct mp_log *log,
                                 const char *connector_spec,
                                 int *card_no, char **connector_name)
{
    if (!connector_spec) {
        *card_no = 0;
        *connector_name = ((void*)0);
        return;
    }
    char *dot_ptr = strchr(connector_spec, '.');
    if (dot_ptr) {
        *card_no = atoi(connector_spec);
        *connector_name = talloc_strdup(log, dot_ptr + 1);
    } else {
        *card_no = 0;
        *connector_name = talloc_strdup(log, connector_spec);
    }
}
