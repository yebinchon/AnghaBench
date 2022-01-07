
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strstr (char*,char*) ;

inline int url_is_request_complete(char *begin, char *end, size_t length) {

    if ( begin == end) {

        return 0;
    }


    if (length > 4) {
        begin = end - 4;
    }

    return (strstr(begin, "\r\n\r\n"))?1:0;
}
