
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int name; } ;


 int ERR (char*) ;
 int board_name ;
 TYPE_2__ out ;
 TYPE_1__ rootfs ;
 scalar_t__ rootfs_size ;
 int strlen (int ) ;
 int version_name ;

int check_options()
{
    if (!rootfs.name) {
        ERR("No rootfs filename supplied");
        return -2;
    }

    if (!out.name) {
        ERR("No output filename supplied");
        return -3;
    }

    if (!board_name) {
        ERR("No board-name supplied");
        return -4;
    }

    if (!version_name) {
        ERR("No version supplied");
        return -5;
    }

    if (rootfs_size <= 0) {
        ERR("Invalid rootfs size supplied");
        return -6;
    }

    if (strlen(board_name) > 31) {
        ERR("Board name is to long");
        return -7;
    }
    return 0;
}
