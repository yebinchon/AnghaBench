
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int status; int opcode; } ;
struct TYPE_10__ {TYPE_1__ response; } ;
struct TYPE_11__ {TYPE_2__ header; } ;
struct TYPE_12__ {TYPE_3__ message; } ;
typedef TYPE_4__ protocol_binary_response_no_extras ;


 int allow_closed_read ;
 int free (TYPE_4__*) ;
 int hickup_thread_running ;
 TYPE_4__* malloc (int) ;
 scalar_t__ safe_recv_packet (TYPE_4__*,int) ;
 int validate_response_header (TYPE_4__*,int ,int ) ;

__attribute__((used)) static void *binary_hickup_recv_verification_thread(void *arg) {
    protocol_binary_response_no_extras *response = malloc(65*1024);
    if (response != ((void*)0)) {
        while (safe_recv_packet(response, 65*1024)) {

            validate_response_header(response,
                                     response->message.header.response.opcode,
                                     response->message.header.response.status);
        }
        free(response);
    }
    hickup_thread_running = 0;
    allow_closed_read = 0;
    return ((void*)0);
}
