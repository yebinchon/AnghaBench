
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tuntap_options {int dummy; } ;
struct TYPE_5__ {int hEvent; } ;
struct TYPE_6__ {TYPE_2__ overlapped; } ;
struct TYPE_4__ {int write; int read; } ;
struct tuntap {int adapter_index; TYPE_3__ writes; TYPE_1__ rw_handle; TYPE_3__ reads; struct tuntap_options options; } ;
struct frame {int dummy; } ;


 int FALSE ;
 int TRUE ;
 int TUN_ADAPTER_INDEX_INVALID ;
 int overlapped_io_init (TYPE_3__*,struct frame const*,int ,int) ;

void
init_tun_post(struct tuntap *tt,
              const struct frame *frame,
              const struct tuntap_options *options)
{
    tt->options = *options;







}
