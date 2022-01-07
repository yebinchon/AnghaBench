
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socket_descriptor_t ;


 int send_line_crlf (int ,char*) ;

__attribute__((used)) static bool
send_crlf(socket_descriptor_t sd)
{
    return send_line_crlf(sd, "");
}
