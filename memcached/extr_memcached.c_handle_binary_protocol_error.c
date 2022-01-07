
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int opcode; } ;
struct TYPE_8__ {TYPE_1__ request; } ;
struct TYPE_9__ {int sfd; int write_and_go; TYPE_2__ binary_header; } ;
typedef TYPE_3__ conn ;
struct TYPE_10__ {scalar_t__ verbose; } ;


 int PROTOCOL_BINARY_RESPONSE_EINVAL ;
 int conn_closing ;
 int fprintf (int ,char*,int,int) ;
 TYPE_5__ settings ;
 int stderr ;
 int write_bin_error (TYPE_3__*,int ,int *,int ) ;

__attribute__((used)) static void handle_binary_protocol_error(conn *c) {
    write_bin_error(c, PROTOCOL_BINARY_RESPONSE_EINVAL, ((void*)0), 0);
    if (settings.verbose) {
        fprintf(stderr, "Protocol error (opcode %02x), close connection %d\n",
                c->binary_header.request.opcode, c->sfd);
    }
    c->write_and_go = conn_closing;
}
