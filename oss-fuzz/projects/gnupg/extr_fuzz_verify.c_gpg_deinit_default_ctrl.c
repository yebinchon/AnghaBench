
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ctrl_t ;
struct TYPE_5__ {int cached_getkey_kdb; } ;


 int gpg_dirmngr_deinit_session_data (TYPE_1__*) ;
 int keydb_release (int ) ;
 int tofu_closedbs (TYPE_1__*) ;

__attribute__((used)) static void
gpg_deinit_default_ctrl (ctrl_t ctrl)
{



    gpg_dirmngr_deinit_session_data (ctrl);

    keydb_release (ctrl->cached_getkey_kdb);
}
