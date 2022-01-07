
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IP_PMTUDISC_DO ;
 int IP_PMTUDISC_DONT ;
 int IP_PMTUDISC_WANT ;
 int MTUDISC_NOT_SUPPORTED_MSG ;
 int M_FATAL ;
 int msg (int ,char*,...) ;
 int strcmp (char const*,char*) ;

int
translate_mtu_discover_type_name(const char *name)
{
    msg(M_FATAL, MTUDISC_NOT_SUPPORTED_MSG);

    return -1;
}
