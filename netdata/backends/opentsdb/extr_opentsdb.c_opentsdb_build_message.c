
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BUFFER ;


 int buffer_sprintf (int *,char*,char const*,int,char*) ;

__attribute__((used)) static inline void opentsdb_build_message(BUFFER *b, char *message, const char *hostname, int length) {
    buffer_sprintf(
            b
            , "POST /api/put HTTP/1.1\r\n"
              "Host: %s\r\n"
              "Content-Type: application/json\r\n"
              "Content-Length: %d\r\n"
              "\r\n"
              "%s"
            , hostname
            , length
            , message
    );
}
