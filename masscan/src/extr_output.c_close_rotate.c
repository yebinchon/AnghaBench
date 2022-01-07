
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Output {scalar_t__ format; int counts; TYPE_1__* funcs; int is_virgin_file; } ;
struct TYPE_2__ {int (* close ) (struct Output*,int *) ;} ;
typedef int FILE ;


 scalar_t__ Output_Redis ;
 int fclose (int *) ;
 int fflush (int *) ;
 int memset (int *,int ,int) ;
 int stub1 (struct Output*,int *) ;

__attribute__((used)) static void
close_rotate(struct Output *out, FILE *fp)
{
    if (out == ((void*)0))
        return;
    if (fp == ((void*)0))
        return;




    if (!out->is_virgin_file)
        out->funcs->close(out, fp);

    memset(&out->counts, 0, sizeof(out->counts));


    if (out->format == Output_Redis)
        return;

    fflush(fp);
    fclose(fp);
}
