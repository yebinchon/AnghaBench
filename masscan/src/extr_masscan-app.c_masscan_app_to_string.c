
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef enum ApplicationProtocol { ____Placeholder_ApplicationProtocol } ApplicationProtocol ;
 int sprintf_s (char*,int,char*,int) ;

const char *
masscan_app_to_string(enum ApplicationProtocol proto)
{
    static char tmp[64];

    switch (proto) {
    case 146: return "unknown";
    case 153: return "unknown";
    case 137: return "ssh";
    case 136: return "ssh";
    case 150: return "http";
    case 155: return "ftp";
    case 156: return "dns-ver";
    case 138: return "snmp";
    case 147: return "nbtstat";
    case 135: return "ssl";
    case 140: return "smb";
    case 139: return "smtp";
    case 144: return "pop";
    case 149: return "imap";
    case 132: return "zeroaccess";
    case 128: return "X509";
    case 151: return "title";
    case 152: return "html";
    case 145: return "ntp";
    case 129: return "vuln";
    case 154: return "heartbleed";
    case 133: return "ticketbleed";
    case 130: return "vnc";
    case 142: return "safe";
    case 148: return "memcached";
    case 141: return "scripting";
    case 131: return "versioning";
    case 157: return "coap";
    case 134: return "telnet";
    case 143: return "rdp";

    default:
        sprintf_s(tmp, sizeof(tmp), "(%u)", proto);
        return tmp;
    }
}
