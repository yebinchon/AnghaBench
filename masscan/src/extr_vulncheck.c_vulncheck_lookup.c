
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MassVulnCheck {int name; } ;


 scalar_t__ strcmp (char const*,int ) ;
 struct MassVulnCheck vuln_ntp_monlist ;

struct MassVulnCheck *
vulncheck_lookup(const char *name)
{
    if (strcmp(name, vuln_ntp_monlist.name) == 0)
        return &vuln_ntp_monlist;
    return 0;
}
