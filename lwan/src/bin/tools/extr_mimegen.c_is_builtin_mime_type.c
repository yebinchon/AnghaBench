
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static bool is_builtin_mime_type(const char *mime)
{


    if (streq(mime, "application/octet-stream"))
        return 1;
    if (streq(mime, "application/javascript"))
        return 1;
    if (streq(mime, "image/jpeg"))
        return 1;
    if (streq(mime, "image/png"))
        return 1;
    if (streq(mime, "text/html"))
        return 1;
    if (streq(mime, "text/css"))
        return 1;
    if (streq(mime, "text/plain"))
        return 1;
    return 0;
}
