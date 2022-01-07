
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int error_prefix ;
struct TYPE_5__ {scalar_t__ protocol; } ;
typedef TYPE_1__ conn ;


 int PROTOCOL_BINARY_RESPONSE_ENOMEM ;
 scalar_t__ binary_prot ;
 int out_string (TYPE_1__*,char*) ;
 int strncmp (char*,char const*,int const) ;
 int write_bin_error (TYPE_1__*,int ,char*,int ) ;

__attribute__((used)) static void out_of_memory(conn *c, char *ascii_error) {
    const static char error_prefix[] = "SERVER_ERROR ";
    const static int error_prefix_len = sizeof(error_prefix) - 1;

    if (c->protocol == binary_prot) {

        if (!strncmp(ascii_error, error_prefix, error_prefix_len)) {
            ascii_error += error_prefix_len;
        }
        write_bin_error(c, PROTOCOL_BINARY_RESPONSE_ENOMEM, ascii_error, 0);
    } else {
        out_string(c, ascii_error);
    }
}
