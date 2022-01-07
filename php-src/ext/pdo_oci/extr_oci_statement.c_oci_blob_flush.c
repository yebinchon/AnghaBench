
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct oci_lob_self {int lob; TYPE_1__* E; } ;
struct TYPE_5__ {scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;
struct TYPE_4__ {int err; int svc; } ;


 int OCILobFlushBuffer (int ,int ,int ,int ) ;

__attribute__((used)) static int oci_blob_flush(php_stream *stream)
{
 struct oci_lob_self *self = (struct oci_lob_self*)stream->abstract;
 OCILobFlushBuffer(self->E->svc, self->E->err, self->lob, 0);
 return 0;
}
