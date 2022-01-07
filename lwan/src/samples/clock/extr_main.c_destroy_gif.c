
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ge_GIF ;


 int ge_close_gif (int *) ;

__attribute__((used)) static void destroy_gif(void *data)
{
    ge_GIF *gif = data;

    ge_close_gif(gif);
}
