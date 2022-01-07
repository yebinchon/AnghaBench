
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NN_WS_HANDSHAKE_MATCH ;
 int NN_WS_HANDSHAKE_NOMATCH ;
 int nn_assert (int) ;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static int nn_ws_match_value (const char* termseq, const char **subj,
    int ignore_leading_sp, int ignore_trailing_sp, const char **addr,
    size_t* const len)
{
    const char *start;
    const char *end;

    nn_assert (termseq && *subj);

    start = *subj;
    if (addr)
        *addr = ((void*)0);
    if (len)
        *len = 0;


    end = strstr (start, termseq);


    if (end) {
        *subj = end + strlen (termseq);
    }
    else {
        return NN_WS_HANDSHAKE_NOMATCH;
    }

    if (ignore_leading_sp) {
        while (*start == '\x20' && start < end) {
            start++;
        }
    }

    if (addr)
        *addr = start;



    if (start == end)
        return NN_WS_HANDSHAKE_MATCH;

    if (ignore_trailing_sp) {
        while (*(end - 1) == '\x20' && start < end) {
            end--;
        }
    }

    if (len)
        *len = end - start;

    return NN_WS_HANDSHAKE_MATCH;
}
