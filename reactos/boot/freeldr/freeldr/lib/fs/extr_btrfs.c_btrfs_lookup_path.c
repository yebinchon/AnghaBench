
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct btrfs_root_item {int root_dirid; } ;
struct btrfs_inode_item {int dummy; } ;
struct btrfs_disk_key {scalar_t__ offset; int type; int objectid; } ;
struct btrfs_dir_item {struct btrfs_disk_key location; int type; } ;


 int BTRFS_FT_DIR ;
 int BTRFS_FT_SYMLINK ;
 int BTRFS_INODE_ITEM_KEY ;
 int BTRFS_NAME_MAX ;
 int BtrFsLookupDirItem (struct btrfs_root_item const*,int ,char const*,int,struct btrfs_dir_item*) ;
 int BtrFsLookupDirItemI (struct btrfs_root_item const*,int ,char const*,int,struct btrfs_dir_item*) ;
 int ERR (char*,int,char const*) ;
 int FrLdrTempFree (char*,int ) ;
 int INVALID_INODE ;
 int TAG_BTRFS_LINK ;
 int TRACE (char*,...) ;
 scalar_t__ btrfs_lookup_inode (struct btrfs_root_item const*,struct btrfs_disk_key*,struct btrfs_inode_item*,int *) ;
 int btrfs_readlink (struct btrfs_root_item const*,int ,char**) ;
 int get_parent_inode (struct btrfs_root_item const*,int ,struct btrfs_inode_item*) ;
 int next_length (char const*) ;
 char* skip_current_directories (char const*) ;

__attribute__((used)) static u64 btrfs_lookup_path(const struct btrfs_root_item *root, u64 inr, const char *path,
                             u8 *type_p, struct btrfs_inode_item *inode_item_p, int symlink_limit)
{
    struct btrfs_dir_item item;
    struct btrfs_inode_item inode_item;
    u8 type = BTRFS_FT_DIR;
    int len, have_inode = 0;
    const char *cur = path;
    struct btrfs_disk_key key;
    char *link_target = ((void*)0);

    if (*cur == '/' || *cur == '\\')
    {
        ++cur;
        inr = root->root_dirid;
    }

    do
    {
        cur = skip_current_directories(cur);

        len = next_length(cur);
        if (len > BTRFS_NAME_MAX)
        {
            ERR("%s: Name too long at \"%.*s\"\n", BTRFS_NAME_MAX, cur);
            return INVALID_INODE;
        }

        if (len == 1 && cur[0] == '.')
            break;

        if (len == 2 && cur[0] == '.' && cur[1] == '.')
        {
            cur += 2;
            inr = get_parent_inode(root, inr, &inode_item);
            if (inr == INVALID_INODE)
                return INVALID_INODE;

            type = BTRFS_FT_DIR;
            continue;
        }

        if (!*cur)
            break;

        if (!BtrFsLookupDirItem(root, inr, cur, len, &item))
        {
            TRACE("Try to find case-insensitive, path=%s inr=%llu s=%.*s\n", path, inr, len, cur);
            if (!BtrFsLookupDirItemI(root, inr, cur, len, &item))
                return INVALID_INODE;
        }

        type = item.type;
        have_inode = 1;
        if (btrfs_lookup_inode(root, &item.location, &inode_item, ((void*)0)))
            return INVALID_INODE;

        if (type == BTRFS_FT_SYMLINK && symlink_limit >= 0)
        {
            if (!symlink_limit)
            {
                TRACE("%s: Too much symlinks!\n");
                return INVALID_INODE;
            }


            if (!btrfs_readlink(root, item.location.objectid, &link_target))
                return INVALID_INODE;

            inr = btrfs_lookup_path(root, inr, link_target, &type, &inode_item, symlink_limit - 1);

            FrLdrTempFree(link_target, TAG_BTRFS_LINK);

            if (inr == INVALID_INODE)
                return INVALID_INODE;
        } else if (type != BTRFS_FT_DIR && cur[len])
        {
            TRACE("%s: \"%.*s\" not a directory\n", (int) (cur - path + len), path);
            return INVALID_INODE;
        } else
        {
            inr = item.location.objectid;
        }

        cur += len;
    } while (*cur);

    if (type_p)
        *type_p = type;

    if (inode_item_p)
    {
        if (!have_inode)
        {
            key.objectid = inr;
            key.type = BTRFS_INODE_ITEM_KEY;
            key.offset = 0;

            if (btrfs_lookup_inode(root, &key, &inode_item, ((void*)0)))
                return INVALID_INODE;
        }

        *inode_item_p = inode_item;
    }

    return inr;
}
