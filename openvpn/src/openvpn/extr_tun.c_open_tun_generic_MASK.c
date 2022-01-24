#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tunname ;
struct tuntap {scalar_t__ type; int persistent_if; int /*<<< orphan*/  actual_name; void* fd; } ;
struct ifreq {int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  dynamic_name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DEV_TYPE_NULL ; 
 int D_READ_WRITE ; 
 int M_ERR ; 
 int M_ERRNO ; 
 int /*<<< orphan*/  M_FATAL ; 
 int M_INFO ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  TAPGIFNAME ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 void* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tuntap*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC13(const char *dev, const char *dev_type, const char *dev_node,
                 bool dynamic, struct tuntap *tt)
{
    char tunname[256];
    char dynamic_name[256];
    bool dynamic_opened = false;

    if (tt->type == DEV_TYPE_NULL)
    {
        FUNC6(tt);
    }
    else
    {
        /*
         * --dev-node specified, so open an explicit device node
         */
        if (dev_node)
        {
            FUNC7(tunname, sizeof(tunname), "%s", dev_node);
        }
        else
        {
            /*
             * dynamic open is indicated by --dev specified without
             * explicit unit number.  Try opening /dev/[dev]n
             * where n = [0, 255].
             */
#ifdef TARGET_NETBSD
            /* on NetBSD, tap (but not tun) devices are opened by
             * opening /dev/tap and then querying the system about the
             * actual device name (tap0, tap1, ...) assigned
             */
            if (dynamic && strcmp( dev, "tap" ) == 0)
            {
                struct ifreq ifr;
                if ((tt->fd = open( "/dev/tap", O_RDWR)) < 0)
                {
                    msg(M_FATAL, "Cannot allocate NetBSD TAP dev dynamically");
                }
                if (ioctl( tt->fd, TAPGIFNAME, (void *)&ifr ) < 0)
                {
                    msg(M_FATAL, "Cannot query NetBSD TAP device name");
                }
                CLEAR(dynamic_name);
                strncpy( dynamic_name, ifr.ifr_name, sizeof(dynamic_name)-1 );
                dynamic_opened = true;
                openvpn_snprintf(tunname, sizeof(tunname), "/dev/%s", dynamic_name );
            }
            else
#endif

            if (dynamic && !FUNC1((unsigned char *)dev))
            {
                int i;
                for (i = 0; i < 256; ++i)
                {
                    FUNC7(tunname, sizeof(tunname),
                                     "/dev/%s%d", dev, i);
                    FUNC7(dynamic_name, sizeof(dynamic_name),
                                     "%s%d", dev, i);
                    if ((tt->fd = FUNC5(tunname, O_RDWR)) > 0)
                    {
                        dynamic_opened = true;
                        break;
                    }
                    FUNC4(D_READ_WRITE | M_ERRNO, "Tried opening %s (failed)", tunname);
                }
                if (!dynamic_opened)
                {
                    FUNC4(M_FATAL, "Cannot allocate TUN/TAP dev dynamically");
                }
            }
            /*
             * explicit unit number specified
             */
            else
            {
                FUNC7(tunname, sizeof(tunname), "/dev/%s", dev);
            }
        }

        if (!dynamic_opened)
        {
            /* has named device existed before? if so, don't destroy at end */
            if (FUNC2( dev ) > 0)
            {
                FUNC4(M_INFO, "TUN/TAP device %s exists previously, keep at program end", dev );
                tt->persistent_if = true;
            }

            if ((tt->fd = FUNC5(tunname, O_RDWR)) < 0)
            {
                FUNC4(M_ERR, "Cannot open TUN/TAP dev %s", tunname);
            }
        }

        FUNC9(tt->fd);
        FUNC8(tt->fd); /* don't pass fd to scripts */
        FUNC4(M_INFO, "TUN/TAP device %s opened", tunname);

        /* tt->actual_name is passed to up and down scripts and used as the ifconfig dev name */
        tt->actual_name = FUNC11(dynamic_opened ? dynamic_name : dev, NULL);
    }
}