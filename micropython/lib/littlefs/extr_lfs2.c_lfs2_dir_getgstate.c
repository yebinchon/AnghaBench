
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;
struct lfs2_gstate {int dummy; } ;
typedef int lfs2_t ;
typedef scalar_t__ lfs2_stag_t ;
typedef int lfs2_mdir_t ;


 scalar_t__ LFS2_ERR_NOENT ;
 int LFS2_MKTAG (int,int ,int) ;
 int LFS2_TYPE_MOVESTATE ;
 scalar_t__ lfs2_dir_get (int *,int const*,int ,int ,struct lfs2_gstate*) ;
 int lfs2_gstate_fromle32 (struct lfs2_gstate*) ;
 int lfs2_gstate_xor (struct lfs2_gstate*,struct lfs2_gstate*) ;

__attribute__((used)) static int lfs2_dir_getgstate(lfs2_t *lfs2, const lfs2_mdir_t *dir,
        struct lfs2_gstate *gstate) {
    struct lfs2_gstate temp;
    lfs2_stag_t res = lfs2_dir_get(lfs2, dir, LFS2_MKTAG(0x7ff, 0, 0),
            LFS2_MKTAG(LFS2_TYPE_MOVESTATE, 0, sizeof(temp)), &temp);
    if (res < 0 && res != LFS2_ERR_NOENT) {
        return res;
    }

    if (res != LFS2_ERR_NOENT) {

        lfs2_gstate_fromle32(&temp);
        lfs2_gstate_xor(gstate, &temp);
    }

    return 0;
}
