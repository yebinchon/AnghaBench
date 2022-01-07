
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 char* talloc_asprintf (void*,char*,...) ;
 char* talloc_strdup (void*,char const*) ;

__attribute__((used)) static char *append_params(void *ta_parent, const char *device, const char *p)
{
    if (!p || !p[0])
        return talloc_strdup(ta_parent, device);

    int len = strlen(device);
    char *end = strchr(device, ':');
    if (!end) {

        return talloc_asprintf(ta_parent, "%s:%s", device, p);
    } else if (end[1] == '\0') {

        return talloc_asprintf(ta_parent, "%s%s", device, p);
    } else if (end[1] == '{' && device[len - 1] == '}') {

        return talloc_asprintf(ta_parent, "%.*s %s}", len - 1, device, p);
    } else {

        return talloc_asprintf(ta_parent, "%s,%s", device, p);
    }
    abort();
}
