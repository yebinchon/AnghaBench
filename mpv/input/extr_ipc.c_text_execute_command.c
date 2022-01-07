
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_handle {int dummy; } ;


 int mpv_command_string (struct mpv_handle*,char*) ;

__attribute__((used)) static char *text_execute_command(struct mpv_handle *client, void *tmp, char *src)
{
    mpv_command_string(client, src);

    return ((void*)0);
}
