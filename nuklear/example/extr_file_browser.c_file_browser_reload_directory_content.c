
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_browser {int dir_count; void* directories; int file_count; void* files; int directory; } ;


 int MAX_PATH_LEN ;
 int dir_free_list (void*,int ) ;
 void* dir_list (char const*,int,int *) ;
 int strncpy (int ,char const*,int ) ;

__attribute__((used)) static void
file_browser_reload_directory_content(struct file_browser *browser, const char *path)
{
    strncpy(browser->directory, path, MAX_PATH_LEN);
    dir_free_list(browser->files, browser->file_count);
    dir_free_list(browser->directories, browser->dir_count);
    browser->files = dir_list(path, 0, &browser->file_count);
    browser->directories = dir_list(path, 1, &browser->dir_count);
}
