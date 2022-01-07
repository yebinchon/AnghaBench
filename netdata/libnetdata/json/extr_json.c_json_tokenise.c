
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsmntok_t ;
typedef int jsmn_parser ;


 int JSMN_ERROR_INVAL ;
 int JSMN_ERROR_NOMEM ;
 int JSMN_ERROR_PART ;
 int error (char*) ;
 int freez (int *) ;
 int jsmn_init (int *) ;
 int jsmn_parse (int *,char*,size_t,int *,int) ;
 int json_tokens ;
 int * mallocz (int) ;
 int * reallocz (int *,int) ;

jsmntok_t *json_tokenise(char *js, size_t len, size_t *count)
{
    int n = json_tokens;
    if(!js || !len) {
        error("JSON: json string is empty.");
        return ((void*)0);
    }

    jsmn_parser parser;
    jsmn_init(&parser);

    jsmntok_t *tokens = mallocz(sizeof(jsmntok_t) * n);
    if(!tokens) return ((void*)0);

    int ret = jsmn_parse(&parser, js, len, tokens, n);
    while (ret == JSMN_ERROR_NOMEM) {
        n *= 2;
        jsmntok_t *new = reallocz(tokens, sizeof(jsmntok_t) * n);
        if(!new) {
            freez(tokens);
            return ((void*)0);
        }
        tokens = new;
        ret = jsmn_parse(&parser, js, len, tokens, n);
    }

    if (ret == JSMN_ERROR_INVAL) {
        error("JSON: Invalid json string.");
        freez(tokens);
        return ((void*)0);
    }
    else if (ret == JSMN_ERROR_PART) {
        error("JSON: Truncated JSON string.");
        freez(tokens);
        return ((void*)0);
    }

    if(count) *count = (size_t)ret;

    if(json_tokens < n) json_tokens = n;
    return tokens;
}
