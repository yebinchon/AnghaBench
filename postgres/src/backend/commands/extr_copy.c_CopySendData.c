
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fe_msgbuf; } ;
typedef TYPE_1__* CopyState ;


 int appendBinaryStringInfo (int ,void const*,int) ;

__attribute__((used)) static void
CopySendData(CopyState cstate, const void *databuf, int datasize)
{
 appendBinaryStringInfo(cstate->fe_msgbuf, databuf, datasize);
}
