
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_stream ;


 scalar_t__ isdigit (int) ;
 scalar_t__ php_stream_gets (int *,char*,size_t) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static inline int get_ftp_result(php_stream *stream, char *buffer, size_t buffer_size)
{
 buffer[0] = '\0';
 while (php_stream_gets(stream, buffer, buffer_size-1) &&
     !(isdigit((int) buffer[0]) && isdigit((int) buffer[1]) &&
    isdigit((int) buffer[2]) && buffer[3] == ' '));
 return strtol(buffer, ((void*)0), 10);
}
