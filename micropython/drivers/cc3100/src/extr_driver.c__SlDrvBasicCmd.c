
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int _i16 ;
typedef int _SlOpcode_t ;
struct TYPE_9__ {int RxDescLen; scalar_t__ TxDescLen; int Opcode; } ;
typedef TYPE_3__ _SlCmdCtrl_t ;
struct TYPE_8__ {int status; } ;
struct TYPE_7__ {int member_1; int member_0; } ;
struct TYPE_10__ {TYPE_2__ Rsp; TYPE_1__ member_0; } ;
typedef TYPE_4__ _SlBasicCmdMsg_u ;
typedef int _BasicResponse_t ;


 int VERIFY_RET_OK (int ) ;
 int _SlDrvCmdOp (TYPE_3__*,TYPE_4__*,int *) ;

_i16 _SlDrvBasicCmd(_SlOpcode_t Opcode)
{
    _SlBasicCmdMsg_u Msg = {{0, 0}};
    _SlCmdCtrl_t CmdCtrl;

    CmdCtrl.Opcode = Opcode;
    CmdCtrl.TxDescLen = 0;
    CmdCtrl.RxDescLen = sizeof(_BasicResponse_t);


    VERIFY_RET_OK(_SlDrvCmdOp((_SlCmdCtrl_t *)&CmdCtrl, &Msg, ((void*)0)));

    return (_i16)Msg.Rsp.status;
}
