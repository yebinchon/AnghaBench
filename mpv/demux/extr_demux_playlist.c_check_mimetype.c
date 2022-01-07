
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream {scalar_t__ mime_type; } ;


 scalar_t__ strcasecmp (scalar_t__,char const* const) ;

__attribute__((used)) static bool check_mimetype(struct stream *s, const char *const *list)
{
    if (s->mime_type) {
        for (int n = 0; list && list[n]; n++) {
            if (strcasecmp(s->mime_type, list[n]) == 0)
                return 1;
        }
    }
    return 0;
}
