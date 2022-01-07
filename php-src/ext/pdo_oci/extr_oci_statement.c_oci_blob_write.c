
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ub4 ;
typedef scalar_t__ sword ;
struct oci_lob_self {int offset; int lob; TYPE_1__* E; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_5__ {scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;
struct TYPE_4__ {int err; int svc; } ;


 scalar_t__ OCILobWrite (int ,int ,int ,scalar_t__*,int ,char*,scalar_t__,int ,int *,int *,int ,int ) ;
 int OCI_ONE_PIECE ;
 scalar_t__ OCI_SUCCESS ;
 int SQLCS_IMPLICIT ;

__attribute__((used)) static ssize_t oci_blob_write(php_stream *stream, const char *buf, size_t count)
{
 struct oci_lob_self *self = (struct oci_lob_self*)stream->abstract;
 ub4 amt;
 sword r;

 amt = (ub4) count;
 r = OCILobWrite(self->E->svc, self->E->err, self->lob,
  &amt, self->offset, (char*)buf, (ub4) count,
  OCI_ONE_PIECE,
  ((void*)0), ((void*)0), 0, SQLCS_IMPLICIT);

 if (r != OCI_SUCCESS) {
  return (ssize_t)-1;
 }

 self->offset += amt;
 return amt;
}
