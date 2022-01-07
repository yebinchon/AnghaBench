
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCAP_ERRBUF_SIZE ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void seterr(char *errbuf, const char *msg)
{
    size_t length = strlen(msg);

    if (length > PCAP_ERRBUF_SIZE-1)
    length = PCAP_ERRBUF_SIZE-1;
    memcpy(errbuf, msg, length);
    errbuf[length] = '\0';
}
