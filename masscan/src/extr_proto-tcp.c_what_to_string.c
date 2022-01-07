
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum TCP_What { ____Placeholder_TCP_What } TCP_What ;
typedef int buf ;
 int sprintf_s (char*,int,char*,int) ;

__attribute__((used)) static const char *
what_to_string(enum TCP_What state)
{
    static char buf[64];
    switch (state) {
        case 128: return "TIMEOUT";
        case 129: return "SYNACK";
        case 130: return "RST";
        case 131: return "FIN";
        case 133: return "ACK";
        case 132: return "DATA";
        default:
            sprintf_s(buf, sizeof(buf), "%d", state);
            return buf;
    }
}
