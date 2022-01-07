
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TxidSnapshot ;
struct TYPE_4__ {int * data; int len; } ;
typedef TYPE_1__* StringInfo ;


 int SET_VARSIZE (int *,int ) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static TxidSnapshot *
buf_finalize(StringInfo buf)
{
 TxidSnapshot *snap = (TxidSnapshot *) buf->data;

 SET_VARSIZE(snap, buf->len);


 buf->data = ((void*)0);
 pfree(buf);

 return snap;
}
