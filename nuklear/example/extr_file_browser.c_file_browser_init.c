
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct media {int dummy; } ;
struct file_browser {char* home; char* directory; char* desktop; int dir_count; void* directories; int file_count; void* files; struct media* media; } ;
struct TYPE_2__ {char* pw_dir; } ;


 int MAX_PATH_LEN ;
 void* dir_list (char*,int,int *) ;
 char* getenv (char*) ;
 TYPE_1__* getpwuid (int ) ;
 int getuid () ;
 int memset (struct file_browser*,int ,int) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;
 int strncpy (char*,char const*,int ) ;

__attribute__((used)) static void
file_browser_init(struct file_browser *browser, struct media *media)
{
    memset(browser, 0, sizeof(*browser));
    browser->media = media;
    {

        const char *home = getenv("HOME");



        if (!home) home = getpwuid(getuid())->pw_dir;
        {
            size_t l;
            strncpy(browser->home, home, MAX_PATH_LEN);
            l = strlen(browser->home);
            strcpy(browser->home + l, "/");
            strcpy(browser->directory, browser->home);
        }

        {
            size_t l;
            strcpy(browser->desktop, browser->home);
            l = strlen(browser->desktop);
            strcpy(browser->desktop + l, "desktop/");
        }
        browser->files = dir_list(browser->directory, 0, &browser->file_count);
        browser->directories = dir_list(browser->directory, 1, &browser->dir_count);
    }
}
