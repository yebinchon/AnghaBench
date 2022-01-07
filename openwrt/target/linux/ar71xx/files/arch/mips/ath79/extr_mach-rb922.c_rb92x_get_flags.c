
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rb_info {int board_name; } ;
struct rb_board_info {int flags; int name; } ;


 int ARRAY_SIZE (struct rb_board_info*) ;
 struct rb_board_info* rb92x_boards ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static u32 rb92x_get_flags(const struct rb_info *info)
{
        int i;

        for (i = 0; i < ARRAY_SIZE(rb92x_boards); i++) {
                const struct rb_board_info *bi;

                bi = &rb92x_boards[i];
                if (strcmp(info->board_name, bi->name) == 0)
                        return bi->flags;
        }

        return 0;
}
