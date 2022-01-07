
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int value; } ;
struct dir_list_cache_data {TYPE_2__ brotli; TYPE_1__ deflated; int rendered; } ;
struct file_cache_entry {struct dir_list_cache_data dir_list_cache_data; } ;


 int free (int ) ;
 int lwan_strbuf_free (int *) ;

__attribute__((used)) static void dirlist_free(struct file_cache_entry *fce)
{
    struct dir_list_cache_data *dd = &fce->dir_list_cache_data;

    lwan_strbuf_free(&dd->rendered);
    free(dd->deflated.value);



}
