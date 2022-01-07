
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int Xend ;
 int assert (int ) ;
 int* counts ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_counts()
{
    unsigned i;
    const char *count_names[] = {
        "Unknown", "NAS", "WiFi", "FW", "X509",
        "Conf", "VM", "Cam", "VPN", "PBX", "Printer",
        "default", "mail", "admin", "AV", "honeypot", "box",
        0, "", "", ""};

    printf("----counts----\n");
    for (i=0; i<Xend; i++) {
        printf("%10u %s\n", counts[i], count_names[i]);
    }
    printf("---------------\n");

    assert(count_names[i] == ((void*)0));
}
