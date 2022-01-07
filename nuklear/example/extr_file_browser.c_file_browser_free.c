
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_browser {int * directories; int * files; int dir_count; int file_count; } ;


 int dir_free_list (int *,int ) ;
 int memset (struct file_browser*,int ,int) ;

__attribute__((used)) static void
file_browser_free(struct file_browser *browser)
{
    if (browser->files)
        dir_free_list(browser->files, browser->file_count);
    if (browser->directories)
        dir_free_list(browser->directories, browser->dir_count);
    browser->files = ((void*)0);
    browser->directories = ((void*)0);
    memset(browser, 0, sizeof(*browser));
}
