
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef long long ut64 ;
typedef int ut32 ;
struct TYPE_5__ {int perm; int uri; int fd; TYPE_1__* io; } ;
struct TYPE_4__ {TYPE_2__* desc; } ;
typedef TYPE_2__ RIODesc ;
typedef int PJ ;


 int R_PERM_W ;
 int pj_end (int *) ;
 int pj_kN (int *,char*,int ) ;
 int pj_kb (int *,char*,int) ;
 int pj_kn (int *,char*,long long) ;
 int pj_ks (int *,char*,int ) ;
 int pj_o (int *) ;
 int r_io_desc_size (TYPE_2__*) ;

__attribute__((used)) static bool desc_list_json_cb(void *user, void *data, ut32 id) {
 PJ *pj = (PJ *)user;
 RIODesc *desc = (RIODesc *)data;

 ut64 from = 0LL;
 pj_o (pj);
 pj_kb (pj, "raised", desc->io && (desc->io->desc == desc));
 pj_kN (pj, "fd", desc->fd);
 pj_ks (pj, "uri", desc->uri);
 pj_kn (pj, "from", from);
 pj_kb (pj, "writable", desc->perm & R_PERM_W);
 pj_kN (pj, "size", r_io_desc_size (desc));
 pj_end (pj);
 return 1;
}
