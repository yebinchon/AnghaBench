
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;
typedef int socket_descriptor_t ;


 int ASSERT (int ) ;
 int BSTR (struct buffer*) ;
 struct buffer alloc_buf (int) ;
 int buf_write (struct buffer*,char const*,int) ;
 int free_buf (struct buffer*) ;
 int send_line (int ,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static bool
send_line_crlf(socket_descriptor_t sd,
               const char *src)
{
    bool ret;

    struct buffer buf = alloc_buf(strlen(src) + 3);
    ASSERT(buf_write(&buf, src, strlen(src)));
    ASSERT(buf_write(&buf, "\r\n", 3));
    ret = send_line(sd, BSTR(&buf));
    free_buf(&buf);
    return ret;
}
