
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static const char *get_lavc_format(const char *format)
{

    if (format && strcmp(format, "webvtt-webm") == 0)
        format = "webvtt";

    if (format && strcmp(format, "text") == 0)
        format = "subrip";
    return format;
}
