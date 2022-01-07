
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 unsigned int const M_FATAL ;
 unsigned int const M_USAGE_SMALL ;
 int OPENVPN_EXIT_STATUS_CANNOT_OPEN_DEBUG_FILE ;
 int * default_err ;
 int * default_out ;
 int * msgfp ;
 int openvpn_exit (int ) ;

FILE *
msg_fp(const unsigned int flags)
{
    FILE *fp = msgfp;
    if (!fp)
    {
        fp = (flags & (M_FATAL|M_USAGE_SMALL)) ? default_err : default_out;
    }
    if (!fp)
    {
        openvpn_exit(OPENVPN_EXIT_STATUS_CANNOT_OPEN_DEBUG_FILE);
    }
    return fp;
}
