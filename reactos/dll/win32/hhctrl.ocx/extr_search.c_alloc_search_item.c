
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int * title; int filename; } ;
typedef TYPE_1__ SearchItem ;


 int heap_alloc (int) ;
 TYPE_1__* heap_alloc_zero (int) ;
 int lstrlenW (int const*) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static SearchItem *alloc_search_item(WCHAR *title, const WCHAR *filename)
{
    int filename_len = filename ? (lstrlenW(filename)+1)*sizeof(WCHAR) : 0;
    SearchItem *item;

    item = heap_alloc_zero(sizeof(SearchItem));
    if(filename)
    {
        item->filename = heap_alloc(filename_len);
        memcpy(item->filename, filename, filename_len);
    }
    item->title = title;

    return item;
}
