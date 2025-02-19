
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char (* get ) (TYPE_2__*) ;} ;
struct TYPE_6__ {TYPE_2__ source; } ;
typedef TYPE_1__ json_stream ;


 int is_legal_utf8 (unsigned char*,int) ;
 int json_error (TYPE_1__*,char*,char*) ;
 scalar_t__ pushchar (TYPE_1__*,char) ;
 char stub1 (TYPE_2__*) ;
 int utf8_seq_length (int) ;

__attribute__((used)) static int
read_utf8(json_stream* json, int next_char)
{
    int count = utf8_seq_length(next_char);
    if (!count)
    {
        json_error(json, "%s", "Bad character.");
        return -1;
    }

    char buffer[4];
    buffer[0] = next_char;
    for (int i = 1; i < count; ++i)
    {
        buffer[i] = json->source.get(&json->source);;
    }

    if (!is_legal_utf8((unsigned char*) buffer, count))
    {
        json_error(json, "%s", "No legal UTF8 found");
        return -1;
    }

    for (int i = 0; i < count; ++i)
    {
        if (pushchar(json, buffer[i]) != 0)
            return -1;
    }
    return 0;
}
