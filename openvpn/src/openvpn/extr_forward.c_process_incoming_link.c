
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct link_socket_info {int dummy; } ;
struct TYPE_3__ {int * data; } ;
struct TYPE_4__ {TYPE_1__ buf; } ;
struct context {TYPE_2__ c2; } ;


 int PERF_PROC_IN_LINK ;
 struct link_socket_info* get_link_socket_info (struct context*) ;
 int perf_pop () ;
 int perf_push (int ) ;
 int process_incoming_link_part1 (struct context*,struct link_socket_info*,int) ;
 int process_incoming_link_part2 (struct context*,struct link_socket_info*,int const*) ;

__attribute__((used)) static void
process_incoming_link(struct context *c)
{
    perf_push(PERF_PROC_IN_LINK);

    struct link_socket_info *lsi = get_link_socket_info(c);
    const uint8_t *orig_buf = c->c2.buf.data;

    process_incoming_link_part1(c, lsi, 0);
    process_incoming_link_part2(c, lsi, orig_buf);

    perf_pop();
}
