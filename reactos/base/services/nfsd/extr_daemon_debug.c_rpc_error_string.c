
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char* rpc_error_string(int status)
{
    switch (status)
    {
    case 138: return "RPC_CANTENCODEARGS";
    case 139: return "RPC_CANTDECODERES";
    case 136: return "RPC_CANTSEND";
    case 137: return "RPC_CANTRECV";
    case 130: return "RPC_TIMEDOUT";
    case 135: return "RPC_INTR";
    case 129: return "RPC_UDERROR";
    case 128: return "RPC_VERSMISMATCH";
    case 141: return "RPC_AUTHERROR";
    case 133: return "RPC_PROGUNAVAIL";
    case 132: return "RPC_PROGVERSMISMATCH";
    case 134: return "RPC_PROCUNAVAIL";
    case 140: return "RPC_CANTDECODEARGS";
    case 131: return "RPC_SYSTEMERROR";
    default: return "invalid rpc error code";
    }
}
