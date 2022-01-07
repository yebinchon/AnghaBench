
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_root_item {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_disk_key {scalar_t__ offset; int type; int objectid; } ;
struct btrfs_dir_item {int name_len; scalar_t__ type; } ;
typedef int BOOLEAN ;


 int BTRFS_DIR_INDEX_KEY ;
 scalar_t__ BTRFS_FT_XATTR ;
 int BtrFsSearchTree (struct btrfs_root_item const*,struct btrfs_disk_key*,struct btrfs_path*) ;
 int FALSE ;
 int TRACE (char*,int,char const*,int,char*) ;
 int TRUE ;
 scalar_t__ _strnicmp (char const*,char*,int) ;
 scalar_t__ btrfs_comp_keys_type (struct btrfs_disk_key*,int ) ;
 int free_path (struct btrfs_path*) ;
 int init_path (struct btrfs_path*) ;
 int next_slot (struct btrfs_disk_key*,struct btrfs_path*) ;
 scalar_t__ path_current_data (struct btrfs_path*) ;
 int path_current_disk_key (struct btrfs_path*) ;
 scalar_t__ verify_dir_item (struct btrfs_dir_item*,int ,int) ;

__attribute__((used)) static BOOLEAN BtrFsLookupDirItemI(const struct btrfs_root_item *root, u64 dir_haystack, const char *name, int name_len,
                                   struct btrfs_dir_item *ret_item)
{
    struct btrfs_path path;
    struct btrfs_disk_key key;
    struct btrfs_dir_item *item;
    char *name_buf;
    BOOLEAN result = FALSE;

    key.objectid = dir_haystack;
    key.type = BTRFS_DIR_INDEX_KEY;
    key.offset = 0;
    init_path(&path);

    BtrFsSearchTree(root, &key, &path);

    if (btrfs_comp_keys_type(&key, path_current_disk_key(&path)))
        goto cleanup;

    do
    {
        item = (struct btrfs_dir_item *) path_current_data(&path);




        if (verify_dir_item(item, 0, sizeof(*item) + item->name_len))
            continue;
        if (item->type == BTRFS_FT_XATTR)
            continue;

        name_buf = (char *) item + sizeof(*item);
        TRACE("Compare names %.*s and %.*s\n", name_len, name, item->name_len, name_buf);

        if (name_len == item->name_len && _strnicmp(name, name_buf, name_len) == 0)
        {
            *ret_item = *item;
            result = TRUE;
            goto cleanup;
        }

    } while (!next_slot(&key, &path));

cleanup:
    free_path(&path);
    return result;
}
