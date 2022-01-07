
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ApplicationProtocol { ____Placeholder_ApplicationProtocol } ApplicationProtocol ;
 scalar_t__ strcmp (char const*,char const*) ;

enum ApplicationProtocol
masscan_string_to_app(const char *str)
{
    const static struct {
        const char *name;
        enum ApplicationProtocol value;
    } list[] = {
        {"ssh1", 137},
        {"ssh2", 136},
        {"ssh", 136},
        {"http", 149},
        {"ftp", 153},
        {"dns-ver", 154},
        {"snmp", 138},
        {"ssh2", 136},
        {"nbtstat", 146},
        {"ssl", 135},
        {"smtp", 139},
        {"smb", 140},
        {"pop", 144},
        {"imap", 148},
        {"x509", 128},
        {"zeroaccess", 132},
        {"title", 150},
        {"html", 151},
        {"ntp", 145},
        {"vuln", 129},
        {"heartbleed", 152},
        {"ticketbleed", 133},
        {"vnc", 130},
        {"safe", 142},
        {"memcached", 147},
        {"scripting", 141},
        {"versioning", 131},
        {"coap", 155},
        {"telnet", 134},
        {"rdp", 143},
        {0,0}
    };
    size_t i;

    for (i=0; list[i].name; i++) {
        if (strcmp(str, list[i].name) == 0)
            return list[i].value;
    }
    return 0;
}
