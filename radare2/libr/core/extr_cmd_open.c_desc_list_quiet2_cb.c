
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_4__ {int fd; } ;
struct TYPE_3__ {int (* cb_printf ) (char*,int ) ;} ;
typedef TYPE_1__ RPrint ;
typedef TYPE_2__ RIODesc ;


 int stub1 (char*,int ) ;

__attribute__((used)) static bool desc_list_quiet2_cb(void *user, void *data, ut32 id) {
 RPrint *p = (RPrint *)user;
 RIODesc *desc = (RIODesc *)data;
 p->cb_printf ("%d\n", desc->fd);
 return 0;
}
