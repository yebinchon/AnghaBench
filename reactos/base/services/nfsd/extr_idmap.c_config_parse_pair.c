
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_pair {char* key; int key_len; char* value; int value_len; } ;


 int ERROR_INVALID_PARAMETER ;
 int NO_ERROR ;
 int eprintf (char*) ;
 scalar_t__ isspace (char) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static int config_parse_pair(
    char *line,
    struct config_pair *pair)
{
    char *pos = line;
    int status = NO_ERROR;


    pos = strchr(line, '#');
    if (pos) *pos = 0;


    pos = line;
    while (isspace(*pos)) pos++;
    pair->key = pos;

    pos = strchr(pos, '=');
    if (pos == ((void*)0)) {
        eprintf("missing '='\n");
        status = ERROR_INVALID_PARAMETER;
        goto out;
    }


    pair->key_len = pos - pair->key;
    while (pair->key_len && isspace(pair->key[pair->key_len-1]))
        pair->key_len--;

    if (pair->key_len <= 0) {
        eprintf("empty key\n");
        status = ERROR_INVALID_PARAMETER;
        goto out;
    }


    pos++;
    while (isspace(*pos)) pos++;

    if (*pos == 0) {
        eprintf("end of line looking for value\n");
        status = ERROR_INVALID_PARAMETER;
        goto out;
    }

    if (*pos == '\"') {

        pair->value = pos + 1;
        pos = strchr(pair->value, '\"');
        if (pos == ((void*)0)) {
            eprintf("no matching '\"'\n");
            status = ERROR_INVALID_PARAMETER;
            goto out;
        }
        pair->value_len = pos - pair->value;
    } else {
        pair->value = pos;
        pair->value_len = strlen(pair->value);


        while (pair->value_len && isspace(pair->value[pair->value_len-1]))
            pair->value_len--;
    }


    ((char*)pair->key)[pair->key_len] = 0;
    ((char*)pair->value)[pair->value_len] = 0;
out:
    return status;
}
