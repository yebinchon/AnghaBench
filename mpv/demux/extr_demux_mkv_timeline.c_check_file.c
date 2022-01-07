
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_ctx {int dummy; } ;


 int check_file_seg (struct tl_ctx*,char*,int) ;

__attribute__((used)) static void check_file(struct tl_ctx *ctx, char *filename, int first)
{
    for (int segment = first; ; segment++) {
        if (!check_file_seg(ctx, filename, segment))
            break;
    }
}
