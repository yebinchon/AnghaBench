
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NN_WS_HANDSHAKE_MATCH ;
 int NN_WS_HANDSHAKE_NOMATCH ;
 int nn_assert (int) ;
 scalar_t__ tolower (char const) ;

__attribute__((used)) static int nn_ws_match_token (const char* token, const char **subj,
    int case_insensitive, int ignore_leading_sp)
{
    const char *pos;

    nn_assert (token && *subj);

    pos = *subj;

    if (ignore_leading_sp) {
        while (*pos == '\x20' && *pos) {
            pos++;
        }
    }

    if (case_insensitive) {
        while (*token && *pos) {
            if (tolower (*token) != tolower (*pos))
                return NN_WS_HANDSHAKE_NOMATCH;
            token++;
            pos++;
        }
    }
    else {
        while (*token && *pos) {
            if (*token != *pos)
                return NN_WS_HANDSHAKE_NOMATCH;
            token++;
            pos++;
        }
    }


    if (!*pos && *token)
        return NN_WS_HANDSHAKE_NOMATCH;


    nn_assert (!*token);


    *subj = pos;

    return NN_WS_HANDSHAKE_MATCH;
}
