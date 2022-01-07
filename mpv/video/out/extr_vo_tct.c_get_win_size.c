
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct winsize {int ws_col; int ws_row; } ;
struct vo {struct priv* priv; } ;
struct priv {TYPE_1__* opts; } ;
struct TYPE_2__ {int width; int height; } ;


 int DEFAULT_HEIGHT ;
 int DEFAULT_WIDTH ;
 int STDOUT_FILENO ;
 int TIOCGWINSZ ;
 scalar_t__ ioctl (int ,int ,struct winsize*) ;

__attribute__((used)) static void get_win_size(struct vo *vo, int *out_width, int *out_height) {
    struct priv *p = vo->priv;
    *out_width = DEFAULT_WIDTH;
    *out_height = DEFAULT_HEIGHT;
    if (p->opts->width > 0)
        *out_width = p->opts->width;
    if (p->opts->height > 0)
        *out_height = p->opts->height;
}
