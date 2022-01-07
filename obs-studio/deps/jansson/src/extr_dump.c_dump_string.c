
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int seq ;
typedef int (* json_dump_callback_t ) (char*,int,void*) ;
typedef char int32_t ;


 size_t JSON_ENSURE_ASCII ;
 size_t JSON_ESCAPE_SLASH ;
 int snprintf (char*,int,char*,unsigned int,...) ;
 char* utf8_iterate (char const*,int,char*) ;

__attribute__((used)) static int dump_string(const char *str, size_t len, json_dump_callback_t dump, void *data, size_t flags)
{
    const char *pos, *end, *lim;
    int32_t codepoint;

    if(dump("\"", 1, data))
        return -1;

    end = pos = str;
    lim = str + len;
    while(1)
    {
        const char *text;
        char seq[13];
        int length;

        while(end < lim)
        {
            end = utf8_iterate(pos, lim - pos, &codepoint);
            if(!end)
                return -1;


            if(codepoint == '\\' || codepoint == '"' || codepoint < 0x20)
                break;


            if((flags & JSON_ESCAPE_SLASH) && codepoint == '/')
                break;


            if((flags & JSON_ENSURE_ASCII) && codepoint > 0x7F)
                break;

            pos = end;
        }

        if(pos != str) {
            if(dump(str, pos - str, data))
                return -1;
        }

        if(end == pos)
            break;


        length = 2;
        switch(codepoint)
        {
            case '\\': text = "\\\\"; break;
            case '\"': text = "\\\""; break;
            case '\b': text = "\\b"; break;
            case '\f': text = "\\f"; break;
            case '\n': text = "\\n"; break;
            case '\r': text = "\\r"; break;
            case '\t': text = "\\t"; break;
            case '/': text = "\\/"; break;
            default:
            {

                if(codepoint < 0x10000)
                {
                    snprintf(seq, sizeof(seq), "\\u%04X", (unsigned int)codepoint);
                    length = 6;
                }


                else
                {
                    int32_t first, last;

                    codepoint -= 0x10000;
                    first = 0xD800 | ((codepoint & 0xffc00) >> 10);
                    last = 0xDC00 | (codepoint & 0x003ff);

                    snprintf(seq, sizeof(seq), "\\u%04X\\u%04X", (unsigned int)first, (unsigned int)last);
                    length = 12;
                }

                text = seq;
                break;
            }
        }

        if(dump(text, length, data))
            return -1;

        str = pos = end;
    }

    return dump("\"", 1, data);
}
