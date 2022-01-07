
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lwan_request {TYPE_1__* helper; } ;
typedef int name ;
struct TYPE_2__ {size_t n_header_start; char** header_start; } ;


 char* HEADER_TERMINATOR_LEN ;
 scalar_t__ UNLIKELY (int) ;
 int snprintf (char*,int,char*,char const*) ;
 int strncasecmp (char const*,char*,size_t) ;

const char *lwan_request_get_header(struct lwan_request *request,
                                    const char *header)
{
    char name[64];
    int r;

    r = snprintf(name, sizeof(name), "%s: ", header);
    if (UNLIKELY(r < 0 || r >= (int)sizeof(name)))
        return ((void*)0);

    for (size_t i = 0; i < request->helper->n_header_start; i++) {
        const char *start = request->helper->header_start[i];
        char *end = request->helper->header_start[i + 1] - HEADER_TERMINATOR_LEN;

        if (UNLIKELY(end - start < r))
            continue;

        if (!strncasecmp(start, name, (size_t)r)) {
            *end = '\0';
            return start + r;
        }
    }

    return ((void*)0);
}
