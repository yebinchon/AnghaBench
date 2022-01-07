
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ keylen; scalar_t__ bodylen; } ;
struct TYPE_10__ {TYPE_1__ request; } ;
struct TYPE_11__ {int sasl_conn; TYPE_2__ binary_header; } ;
typedef TYPE_3__ conn ;
struct TYPE_12__ {scalar_t__ verbose; int sasl; } ;


 int PROTOCOL_BINARY_RESPONSE_AUTH_ERROR ;
 int PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND ;
 int SASL_OK ;
 int fprintf (int ,char*) ;
 int init_sasl_conn (TYPE_3__*) ;
 int sasl_listmech (int ,int *,char*,char*,char*,char const**,unsigned int*,int *) ;
 TYPE_6__ settings ;
 int stderr ;
 int write_bin_error (TYPE_3__*,int ,int *,scalar_t__) ;
 int write_bin_response (TYPE_3__*,char*,int ,int ,unsigned int) ;

__attribute__((used)) static void bin_list_sasl_mechs(conn *c) {

    if (!settings.sasl) {
        write_bin_error(c, PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND, ((void*)0),
                        c->binary_header.request.bodylen
                        - c->binary_header.request.keylen);
        return;
    }

    init_sasl_conn(c);
    const char *result_string = ((void*)0);
    unsigned int string_length = 0;
    int result=sasl_listmech(c->sasl_conn, ((void*)0),
                             "",
                             " ",
                             "",
                             &result_string, &string_length,
                             ((void*)0));
    if (result != SASL_OK) {

        if (settings.verbose) {
            fprintf(stderr, "Failed to list SASL mechanisms.\n");
        }
        write_bin_error(c, PROTOCOL_BINARY_RESPONSE_AUTH_ERROR, ((void*)0), 0);
        return;
    }
    write_bin_response(c, (char*)result_string, 0, 0, string_length);
}
