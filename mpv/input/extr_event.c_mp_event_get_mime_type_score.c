
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int dummy; } ;


 scalar_t__ strcmp (char const*,char*) ;

int mp_event_get_mime_type_score(struct input_ctx *ictx, const char *mime_type)
{

    if (strcmp(mime_type, "text/uri-list") == 0)
        return 10;

    if (strcmp(mime_type, "text/plain;charset=utf-8") == 0)
        return 5;
    if (strcmp(mime_type, "text/plain") == 0)
        return 4;
    if (strcmp(mime_type, "text") == 0)
        return 0;
    return -1;
}
