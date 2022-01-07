
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_length; } ;
struct TCP_Control_Block {TYPE_1__ banout; int banner1_state; } ;
struct TCP_ConnectionTable {int banner1; } ;
struct InteractiveData {int dummy; } ;


 int assert (int ) ;
 int banner1_parse (int ,int *,unsigned char const*,size_t,TYPE_1__*,struct InteractiveData*) ;

__attribute__((used)) static size_t
parse_banner(
    struct TCP_ConnectionTable *tcpcon,
    struct TCP_Control_Block *tcb,
    const unsigned char *payload,
    size_t payload_length,
    struct InteractiveData *more)
{
    assert(tcb->banout.max_length);

    banner1_parse(
                                    tcpcon->banner1,
                                    &tcb->banner1_state,
                                    payload,
                                    payload_length,
                                    &tcb->banout,
                                    more);
    return payload_length;
}
