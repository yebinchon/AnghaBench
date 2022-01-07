
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist {int dummy; } ;


 int playlist_add_file (struct playlist*,char const*) ;

__attribute__((used)) static void process_non_option(struct playlist *files, const char *arg)
{
    playlist_add_file(files, arg);
}
