
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tunname ;
struct tuntap {scalar_t__ type; int persistent_if; int actual_name; void* fd; } ;
struct ifreq {int ifr_name; } ;
typedef int dynamic_name ;


 int CLEAR (char*) ;
 scalar_t__ DEV_TYPE_NULL ;
 int D_READ_WRITE ;
 int M_ERR ;
 int M_ERRNO ;
 int M_FATAL ;
 int M_INFO ;
 int O_RDWR ;
 int TAPGIFNAME ;
 int has_digit (unsigned char*) ;
 scalar_t__ if_nametoindex (char const*) ;
 scalar_t__ ioctl (void*,int ,void*) ;
 int msg (int,char*,...) ;
 void* open (char*,int ) ;
 int open_null (struct tuntap*) ;
 int openvpn_snprintf (char*,int,char*,char const*,...) ;
 int set_cloexec (void*) ;
 int set_nonblock (void*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int string_alloc (char*,int *) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static void
open_tun_generic(const char *dev, const char *dev_type, const char *dev_node,
                 bool dynamic, struct tuntap *tt)
{
    char tunname[256];
    char dynamic_name[256];
    bool dynamic_opened = 0;

    if (tt->type == DEV_TYPE_NULL)
    {
        open_null(tt);
    }
    else
    {



        if (dev_node)
        {
            openvpn_snprintf(tunname, sizeof(tunname), "%s", dev_node);
        }
        else
        {
            if (dynamic && !has_digit((unsigned char *)dev))
            {
                int i;
                for (i = 0; i < 256; ++i)
                {
                    openvpn_snprintf(tunname, sizeof(tunname),
                                     "/dev/%s%d", dev, i);
                    openvpn_snprintf(dynamic_name, sizeof(dynamic_name),
                                     "%s%d", dev, i);
                    if ((tt->fd = open(tunname, O_RDWR)) > 0)
                    {
                        dynamic_opened = 1;
                        break;
                    }
                    msg(D_READ_WRITE | M_ERRNO, "Tried opening %s (failed)", tunname);
                }
                if (!dynamic_opened)
                {
                    msg(M_FATAL, "Cannot allocate TUN/TAP dev dynamically");
                }
            }



            else
            {
                openvpn_snprintf(tunname, sizeof(tunname), "/dev/%s", dev);
            }
        }

        if (!dynamic_opened)
        {

            if (if_nametoindex( dev ) > 0)
            {
                msg(M_INFO, "TUN/TAP device %s exists previously, keep at program end", dev );
                tt->persistent_if = 1;
            }

            if ((tt->fd = open(tunname, O_RDWR)) < 0)
            {
                msg(M_ERR, "Cannot open TUN/TAP dev %s", tunname);
            }
        }

        set_nonblock(tt->fd);
        set_cloexec(tt->fd);
        msg(M_INFO, "TUN/TAP device %s opened", tunname);


        tt->actual_name = string_alloc(dynamic_opened ? dynamic_name : dev, ((void*)0));
    }
}
