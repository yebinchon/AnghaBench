
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t filename_len; unsigned short inode; int filename; TYPE_1__* phar; } ;
typedef TYPE_2__ phar_entry_info ;
struct TYPE_4__ {size_t fname_len; int fname; } ;


 int MAXPATHLEN ;
 size_t MIN (size_t,size_t) ;
 int memcpy (char*,int ,size_t) ;
 scalar_t__ zend_hash_func (char*,size_t) ;

__attribute__((used)) static inline void phar_set_inode(phar_entry_info *entry)
{
 char tmp[MAXPATHLEN];
 size_t tmp_len;
 size_t len1, len2;

 tmp_len = MIN(MAXPATHLEN, entry->filename_len + entry->phar->fname_len);

 len1 = MIN(entry->phar->fname_len, tmp_len);
 if (entry->phar->fname) {
  memcpy(tmp, entry->phar->fname, len1);
 }

 len2 = MIN(tmp_len - len1, entry->filename_len);
 memcpy(tmp + len1, entry->filename, len2);

 entry->inode = (unsigned short) zend_hash_func(tmp, tmp_len);
}
