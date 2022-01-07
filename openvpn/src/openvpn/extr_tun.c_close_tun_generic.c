
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {scalar_t__ fd; scalar_t__ actual_name; } ;


 int clear_tuntap (struct tuntap*) ;
 int close (scalar_t__) ;
 int free (scalar_t__) ;

__attribute__((used)) static void
close_tun_generic(struct tuntap *tt)
{
    if (tt->fd >= 0)
    {
        close(tt->fd);
    }
    if (tt->actual_name)
    {
        free(tt->actual_name);
    }
    clear_tuntap(tt);
}
