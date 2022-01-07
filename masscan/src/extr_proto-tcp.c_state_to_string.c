
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
 int sprintf_s (char*,int,char*,int) ;

__attribute__((used)) static const char *
state_to_string(int state)
{
    static char buf[64];
    switch (state) {


        case 130: return "LAST-ACK";
        case 132: return "FIN-WAIT-1";
        case 131: return "FIN-WAIT-2";
        case 135: return "CLOSING";
        case 128: return "TIME-WAIT";
        case 129: return "SYN_SENT";
        case 133:return "ESTABLISHED_SEND";
        case 134:return "ESTABLISHED_RECV";

        default:
            sprintf_s(buf, sizeof(buf), "%d", state);
            return buf;
    }
}
