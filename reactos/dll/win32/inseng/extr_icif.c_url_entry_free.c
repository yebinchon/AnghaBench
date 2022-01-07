
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url_info {struct url_info* url; } ;


 int heap_free (struct url_info*) ;

__attribute__((used)) static void url_entry_free(struct url_info *url)
{
    heap_free(url->url);
    heap_free(url);
}
