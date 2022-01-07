
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int value; } ;
struct TYPE_7__ {int value; } ;
struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int len; int value; } ;
struct mmap_cache_data {TYPE_4__ zstd; TYPE_3__ brotli; TYPE_2__ deflated; TYPE_1__ uncompressed; } ;
struct file_cache_entry {struct mmap_cache_data mmap_cache_data; } ;


 int free (int ) ;
 int munmap (int ,int ) ;

__attribute__((used)) static void mmap_free(struct file_cache_entry *fce)
{
    struct mmap_cache_data *md = &fce->mmap_cache_data;

    munmap(md->uncompressed.value, md->uncompressed.len);
    free(md->deflated.value);






}
