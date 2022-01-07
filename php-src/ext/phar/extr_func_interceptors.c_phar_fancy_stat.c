
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {scalar_t__ st_uid; scalar_t__ st_gid; int st_mode; int st_ino; int st_size; int st_atime; int st_mtime; int st_ctime; int st_dev; int st_nlink; int st_rdev; int st_blksize; int st_blocks; } ;
typedef TYPE_1__ zend_stat_t ;
typedef int zend_long ;
typedef scalar_t__ gid_t ;


 int E_NOTICE ;
 int E_WARNING ;
 int RETURN_BOOL (int) ;
 int RETURN_FALSE ;
 int RETURN_LONG (int ) ;
 int RETURN_STRING (char*) ;
 int RETURN_TRUE ;

 int S_IFMT ;

 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_ISDIR (int) ;
 int S_ISLNK (int) ;
 int S_ISREG (int) ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int ZVAL_LONG (int *,int) ;
 int Z_ARRVAL_P (int *) ;
 int array_init (int *) ;
 int efree (scalar_t__*) ;
 scalar_t__ getgid () ;
 int getgroups (int,scalar_t__*) ;
 scalar_t__ getuid () ;
 int php_error_docref (int *,int ,char*,...) ;
 scalar_t__ safe_emalloc (int,int,int ) ;
 int strlen (char*) ;
 int zend_hash_next_index_insert (int ,int *) ;
 int zend_hash_str_update (int ,char*,int ,int *) ;

__attribute__((used)) static void phar_fancy_stat(zend_stat_t *stat_sb, int type, zval *return_value)
{
 zval stat_dev, stat_ino, stat_mode, stat_nlink, stat_uid, stat_gid, stat_rdev,
   stat_size, stat_atime, stat_mtime, stat_ctime, stat_blksize, stat_blocks;
 int rmask=S_IROTH, wmask=S_IWOTH, xmask=S_IXOTH;
 char *stat_sb_names[13] = {
  "dev", "ino", "mode", "nlink", "uid", "gid", "rdev",
  "size", "atime", "mtime", "ctime", "blksize", "blocks"
 };

 if (type >= 138 && type <= 137) {
  if(stat_sb->st_uid==getuid()) {
   rmask=S_IRUSR;
   wmask=S_IWUSR;
   xmask=S_IXUSR;
  } else if(stat_sb->st_gid==getgid()) {
   rmask=S_IRGRP;
   wmask=S_IWGRP;
   xmask=S_IXGRP;
  } else {
   int groups, n, i;
   gid_t *gids;

   groups = getgroups(0, ((void*)0));
   if(groups > 0) {
    gids=(gid_t *)safe_emalloc(groups, sizeof(gid_t), 0);
    n=getgroups(groups, gids);
    for(i=0;i<n;++i){
     if(stat_sb->st_gid==gids[i]) {
      rmask=S_IRGRP;
      wmask=S_IWGRP;
      xmask=S_IXGRP;
      break;
     }
    }
    efree(gids);
   }
  }
 }

 switch (type) {
 case 133:
  RETURN_LONG((zend_long)stat_sb->st_mode);
 case 143:
  RETURN_LONG((zend_long)stat_sb->st_ino);
 case 132:
  RETURN_LONG((zend_long)stat_sb->st_size);
 case 134:
  RETURN_LONG((zend_long)stat_sb->st_uid);
 case 144:
  RETURN_LONG((zend_long)stat_sb->st_gid);
 case 147:
  RETURN_LONG((zend_long)stat_sb->st_atime);
 case 135:
  RETURN_LONG((zend_long)stat_sb->st_mtime);
 case 146:
  RETURN_LONG((zend_long)stat_sb->st_ctime);
 case 130:
  if (S_ISLNK(stat_sb->st_mode)) {
   RETURN_STRING("link");
  }
  switch(stat_sb->st_mode & S_IFMT) {
  case 129: RETURN_STRING("dir");
  case 128: RETURN_STRING("file");
  }
  php_error_docref(((void*)0), E_NOTICE, "Unknown file type (%u)", stat_sb->st_mode & S_IFMT);
  RETURN_STRING("unknown");
 case 138:
  RETURN_BOOL((stat_sb->st_mode & wmask) != 0);
 case 139:
  RETURN_BOOL((stat_sb->st_mode&rmask)!=0);
 case 137:
  RETURN_BOOL((stat_sb->st_mode&xmask)!=0 && !S_ISDIR(stat_sb->st_mode));
 case 141:
  RETURN_BOOL(S_ISREG(stat_sb->st_mode));
 case 142:
  RETURN_BOOL(S_ISDIR(stat_sb->st_mode));
 case 140:
  RETURN_BOOL(S_ISLNK(stat_sb->st_mode));
 case 145:
  RETURN_TRUE;
 case 136:

 case 131:
  array_init(return_value);

  ZVAL_LONG(&stat_dev, stat_sb->st_dev);
  ZVAL_LONG(&stat_ino, stat_sb->st_ino);
  ZVAL_LONG(&stat_mode, stat_sb->st_mode);
  ZVAL_LONG(&stat_nlink, stat_sb->st_nlink);
  ZVAL_LONG(&stat_uid, stat_sb->st_uid);
  ZVAL_LONG(&stat_gid, stat_sb->st_gid);



  ZVAL_LONG(&stat_rdev, -1);

  ZVAL_LONG(&stat_size, stat_sb->st_size);
  ZVAL_LONG(&stat_atime, stat_sb->st_atime);
  ZVAL_LONG(&stat_mtime, stat_sb->st_mtime);
  ZVAL_LONG(&stat_ctime, stat_sb->st_ctime);



  ZVAL_LONG(&stat_blksize,-1);




  ZVAL_LONG(&stat_blocks,-1);


  zend_hash_next_index_insert(Z_ARRVAL_P(return_value), &stat_dev);
  zend_hash_next_index_insert(Z_ARRVAL_P(return_value), &stat_ino);
  zend_hash_next_index_insert(Z_ARRVAL_P(return_value), &stat_mode);
  zend_hash_next_index_insert(Z_ARRVAL_P(return_value), &stat_nlink);
  zend_hash_next_index_insert(Z_ARRVAL_P(return_value), &stat_uid);
  zend_hash_next_index_insert(Z_ARRVAL_P(return_value), &stat_gid);

  zend_hash_next_index_insert(Z_ARRVAL_P(return_value), &stat_rdev);
  zend_hash_next_index_insert(Z_ARRVAL_P(return_value), &stat_size);
  zend_hash_next_index_insert(Z_ARRVAL_P(return_value), &stat_atime);
  zend_hash_next_index_insert(Z_ARRVAL_P(return_value), &stat_mtime);
  zend_hash_next_index_insert(Z_ARRVAL_P(return_value), &stat_ctime);
  zend_hash_next_index_insert(Z_ARRVAL_P(return_value), &stat_blksize);
  zend_hash_next_index_insert(Z_ARRVAL_P(return_value), &stat_blocks);


  zend_hash_str_update(Z_ARRVAL_P(return_value), stat_sb_names[0], strlen(stat_sb_names[0]), &stat_dev);
  zend_hash_str_update(Z_ARRVAL_P(return_value), stat_sb_names[1], strlen(stat_sb_names[1]), &stat_ino);
  zend_hash_str_update(Z_ARRVAL_P(return_value), stat_sb_names[2], strlen(stat_sb_names[2]), &stat_mode);
  zend_hash_str_update(Z_ARRVAL_P(return_value), stat_sb_names[3], strlen(stat_sb_names[3]), &stat_nlink);
  zend_hash_str_update(Z_ARRVAL_P(return_value), stat_sb_names[4], strlen(stat_sb_names[4]), &stat_uid);
  zend_hash_str_update(Z_ARRVAL_P(return_value), stat_sb_names[5], strlen(stat_sb_names[5]), &stat_gid);
  zend_hash_str_update(Z_ARRVAL_P(return_value), stat_sb_names[6], strlen(stat_sb_names[6]), &stat_rdev);
  zend_hash_str_update(Z_ARRVAL_P(return_value), stat_sb_names[7], strlen(stat_sb_names[7]), &stat_size);
  zend_hash_str_update(Z_ARRVAL_P(return_value), stat_sb_names[8], strlen(stat_sb_names[8]), &stat_atime);
  zend_hash_str_update(Z_ARRVAL_P(return_value), stat_sb_names[9], strlen(stat_sb_names[9]), &stat_mtime);
  zend_hash_str_update(Z_ARRVAL_P(return_value), stat_sb_names[10], strlen(stat_sb_names[10]), &stat_ctime);
  zend_hash_str_update(Z_ARRVAL_P(return_value), stat_sb_names[11], strlen(stat_sb_names[11]), &stat_blksize);
  zend_hash_str_update(Z_ARRVAL_P(return_value), stat_sb_names[12], strlen(stat_sb_names[12]), &stat_blocks);

  return;
 }
 php_error_docref(((void*)0), E_WARNING, "Didn't understand stat call");
 RETURN_FALSE;
}
