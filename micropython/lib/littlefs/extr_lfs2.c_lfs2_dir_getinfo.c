
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct lfs2_info {int size; scalar_t__ type; struct lfs2_ctz* name; } ;
struct lfs2_ctz {int size; } ;
struct TYPE_4__ {int name_max; } ;
typedef TYPE_1__ lfs2_t ;
typedef scalar_t__ lfs2_stag_t ;
typedef int lfs2_mdir_t ;
typedef int ctz ;


 int LFS2_MKTAG (int,int,int) ;
 scalar_t__ LFS2_TYPE_CTZSTRUCT ;
 scalar_t__ LFS2_TYPE_DIR ;
 scalar_t__ LFS2_TYPE_INLINESTRUCT ;
 int LFS2_TYPE_NAME ;
 int LFS2_TYPE_STRUCT ;
 int lfs2_ctz_fromle32 (struct lfs2_ctz*) ;
 scalar_t__ lfs2_dir_get (TYPE_1__*,int *,int ,int ,struct lfs2_ctz*) ;
 int lfs2_tag_size (scalar_t__) ;
 scalar_t__ lfs2_tag_type3 (scalar_t__) ;
 int strcpy (struct lfs2_ctz*,char*) ;

__attribute__((used)) static int lfs2_dir_getinfo(lfs2_t *lfs2, lfs2_mdir_t *dir,
        uint16_t id, struct lfs2_info *info) {
    if (id == 0x3ff) {

        strcpy(info->name, "/");
        info->type = LFS2_TYPE_DIR;
        return 0;
    }

    lfs2_stag_t tag = lfs2_dir_get(lfs2, dir, LFS2_MKTAG(0x780, 0x3ff, 0),
            LFS2_MKTAG(LFS2_TYPE_NAME, id, lfs2->name_max+1), info->name);
    if (tag < 0) {
        return (int)tag;
    }

    info->type = lfs2_tag_type3(tag);

    struct lfs2_ctz ctz;
    tag = lfs2_dir_get(lfs2, dir, LFS2_MKTAG(0x700, 0x3ff, 0),
            LFS2_MKTAG(LFS2_TYPE_STRUCT, id, sizeof(ctz)), &ctz);
    if (tag < 0) {
        return (int)tag;
    }
    lfs2_ctz_fromle32(&ctz);

    if (lfs2_tag_type3(tag) == LFS2_TYPE_CTZSTRUCT) {
        info->size = ctz.size;
    } else if (lfs2_tag_type3(tag) == LFS2_TYPE_INLINESTRUCT) {
        info->size = lfs2_tag_size(tag);
    }

    return 0;
}
