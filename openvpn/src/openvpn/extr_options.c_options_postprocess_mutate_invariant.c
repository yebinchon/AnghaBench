
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tap_sleep; int ip_win32_type; } ;
struct options {scalar_t__ inetd; int ifconfig_noexec; int route_delay_defined; scalar_t__ mode; int route_delay; scalar_t__* pkcs11_providers; scalar_t__ pkcs11_id_management; scalar_t__ pkcs11_id; TYPE_1__ tuntap_options; scalar_t__ wintun; int dev_type; int dev; } ;


 scalar_t__ DEFAULT_PKCS11_MODULE ;
 int const DEV_TYPE_TAP ;
 int const DEV_TYPE_TUN ;
 scalar_t__ INETD_NOWAIT ;
 int IPW32_SET_IPAPI ;
 int IPW32_SET_MANUAL ;
 scalar_t__ MODE_POINT_TO_POINT ;
 scalar_t__ MODE_SERVER ;
 int dev_type_enum (int ,int ) ;
 int remap_redirect_gateway_flags (struct options*) ;

__attribute__((used)) static void
options_postprocess_mutate_invariant(struct options *options)
{
    if (options->inetd == INETD_NOWAIT)
    {
        options->ifconfig_noexec = 1;
    }
}
