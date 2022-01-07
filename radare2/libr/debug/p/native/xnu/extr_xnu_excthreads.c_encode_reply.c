
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ msgh_id; int msgh_local_port; scalar_t__ msgh_size; int msgh_remote_port; int msgh_bits; } ;
struct TYPE_5__ {int RetCode; int NDR; TYPE_2__ Head; } ;
typedef TYPE_1__ mig_reply_error_t ;
typedef scalar_t__ mach_msg_size_t ;
typedef TYPE_2__ mach_msg_header_t ;


 int MACH_MSGH_BITS (int ,int ) ;
 int MACH_MSGH_BITS_REMOTE (int ) ;
 int MACH_PORT_NULL ;
 int NDR_record ;

__attribute__((used)) static void encode_reply(mig_reply_error_t *reply, mach_msg_header_t *hdr, int code) {
 mach_msg_header_t *rh = &reply->Head;
 rh->msgh_bits = MACH_MSGH_BITS (MACH_MSGH_BITS_REMOTE(hdr->msgh_bits), 0);
 rh->msgh_remote_port = hdr->msgh_remote_port;
 rh->msgh_size = (mach_msg_size_t) sizeof (mig_reply_error_t);
 rh->msgh_local_port = MACH_PORT_NULL;
 rh->msgh_id = hdr->msgh_id + 100;
 reply->NDR = NDR_record;
 reply->RetCode = code;
}
