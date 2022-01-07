
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NN_WS_HANDSHAKE_MATCH ;
 int NN_WS_HANDSHAKE_NOMATCH ;
 size_t strlen (char const*) ;
 scalar_t__ tolower (char const) ;

__attribute__((used)) static int nn_ws_validate_value (const char* expected, const char *subj,
    size_t subj_len, int case_insensitive)
{
    if (strlen (expected) != subj_len)
        return NN_WS_HANDSHAKE_NOMATCH;

    if (case_insensitive) {
        while (*expected && *subj) {
            if (tolower (*expected) != tolower (*subj))
                return NN_WS_HANDSHAKE_NOMATCH;
            expected++;
            subj++;
        }
    }
    else {
        while (*expected && *subj) {
            if (*expected != *subj)
                return NN_WS_HANDSHAKE_NOMATCH;
            expected++;
            subj++;
        }
    }

    return NN_WS_HANDSHAKE_MATCH;
}
