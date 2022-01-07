
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ub4 ;
typedef scalar_t__ sword ;
struct oci_lob_self {size_t offset; int lob; TYPE_1__* E; } ;
struct TYPE_5__ {int eof; scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;
struct TYPE_4__ {int err; int svc; } ;


 scalar_t__ OCILobRead (int ,int ,int ,size_t*,size_t,char*,size_t,int *,int *,int ,int ) ;
 scalar_t__ OCI_NEED_DATA ;
 scalar_t__ OCI_SUCCESS ;
 int SQLCS_IMPLICIT ;

__attribute__((used)) static size_t oci_blob_read(php_stream *stream, char *buf, size_t count)
{
 struct oci_lob_self *self = (struct oci_lob_self*)stream->abstract;
 ub4 amt;
 sword r;

 amt = (ub4) count;
 r = OCILobRead(self->E->svc, self->E->err, self->lob,
  &amt, self->offset, buf, (ub4) count,
  ((void*)0), ((void*)0), 0, SQLCS_IMPLICIT);

 if (r != OCI_SUCCESS && r != OCI_NEED_DATA) {
  return (size_t)-1;
 }

 self->offset += amt;
 if (amt < count) {
  stream->eof = 1;
 }
 return amt;
}
