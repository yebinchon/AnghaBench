
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int (* get ) (TYPE_2__*) ;} ;
struct TYPE_9__ {TYPE_2__ source; } ;
typedef TYPE_1__ json_stream ;
typedef enum json_type { ____Placeholder_json_type } json_type ;


 int EOF ;
 int JSON_ERROR ;
 int JSON_STRING ;
 scalar_t__ char_needs_escaping (int) ;
 scalar_t__ init_string (TYPE_1__*) ;
 int json_error (TYPE_1__*,char*,char*) ;
 scalar_t__ pushchar (TYPE_1__*,int) ;
 scalar_t__ read_escaped (TYPE_1__*) ;
 scalar_t__ read_utf8 (TYPE_1__*,int) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static enum json_type
read_string(json_stream *json)
{
    if (init_string(json) != 0)
        return JSON_ERROR;
    while (1) {
        int c = json->source.get(&json->source);
        if (c == EOF) {
            json_error(json, "%s", "unterminated string literal");
            return JSON_ERROR;
        } else if (c == '"') {
            if (pushchar(json, '\0') == 0)
                return JSON_STRING;
            else
                return JSON_ERROR;
        } else if (c == '\\') {
            if (read_escaped(json) != 0)
                return JSON_ERROR;
        } else if ((unsigned) c >= 0x80) {
            if (read_utf8(json, c) != 0)
                return JSON_ERROR;
        } else {
            if (char_needs_escaping(c)) {
                json_error(json, "%s", "unescaped control character in string");
                return JSON_ERROR;
            }

            if (pushchar(json, c) != 0)
                return JSON_ERROR;
        }
    }
    return JSON_ERROR;
}
