
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int t_hoff; int t_infomask2; int t_infomask; } ;
typedef TYPE_2__ xl_heap_header ;
struct TYPE_10__ {int t_hoff; int t_infomask2; int t_infomask; } ;
struct TYPE_7__ {int t_len; TYPE_4__* t_data; int t_tableOid; int t_self; } ;
struct TYPE_9__ {TYPE_1__ tuple; } ;
typedef int Size ;
typedef TYPE_3__ ReorderBufferTupleBuf ;
typedef TYPE_4__* HeapTupleHeader ;


 int Assert (int) ;
 int InvalidOid ;
 int ItemPointerSetInvalid (int *) ;
 int SizeOfHeapHeader ;
 int SizeofHeapTupleHeader ;
 int memcpy (char*,char*,int) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static void
DecodeXLogTuple(char *data, Size len, ReorderBufferTupleBuf *tuple)
{
 xl_heap_header xlhdr;
 int datalen = len - SizeOfHeapHeader;
 HeapTupleHeader header;

 Assert(datalen >= 0);

 tuple->tuple.t_len = datalen + SizeofHeapTupleHeader;
 header = tuple->tuple.t_data;


 ItemPointerSetInvalid(&tuple->tuple.t_self);


 tuple->tuple.t_tableOid = InvalidOid;


 memcpy((char *) &xlhdr,
     data,
     SizeOfHeapHeader);

 memset(header, 0, SizeofHeapTupleHeader);

 memcpy(((char *) tuple->tuple.t_data) + SizeofHeapTupleHeader,
     data + SizeOfHeapHeader,
     datalen);

 header->t_infomask = xlhdr.t_infomask;
 header->t_infomask2 = xlhdr.t_infomask2;
 header->t_hoff = xlhdr.t_hoff;
}
