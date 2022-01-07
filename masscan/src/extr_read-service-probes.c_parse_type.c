
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum SvcP_RecordType { ____Placeholder_SvcP_RecordType } SvcP_RecordType ;
 scalar_t__ isspace (char const) ;
 scalar_t__ strncasecmp (char const*,char const*,size_t) ;

__attribute__((used)) static enum SvcP_RecordType
parse_type(const char *line, size_t *r_offset, size_t line_length)
{
    static const struct {
        const char *name;
        size_t length;
        enum SvcP_RecordType type;
    } name_to_types[] = {
        {"exclude", 7, 138},
        {"probe", 5, 134},
        {"match", 5, 136},
        {"softmatch", 9, 132},
        {"ports", 5, 135},
        {"sslports", 8, 131},
        {"totalwaitms", 11, 129},
        {"tcpwrappedms",12, 130},
        {"rarity", 6, 133},
        {"fallback", 8, 137},
        {0, 128}
    };

    size_t i;
    size_t offset = *r_offset;
    size_t name_length;
    size_t name_offset;
    enum SvcP_RecordType result;


    name_offset = offset;
    while (offset < line_length && !isspace(line[offset]))
        offset++;
    name_length = offset - name_offset;
    while (offset < line_length && isspace(line[offset]))
        offset++;
    *r_offset = offset;


    for (i=0; name_to_types[i].name; i++) {
        if (name_length != name_to_types[i].length)
            continue;
        if (strncasecmp(line+name_offset, name_to_types[i].name, name_length) == 0) {
            break;
        }
    }
    result = name_to_types[i].type;


    return result;
}
