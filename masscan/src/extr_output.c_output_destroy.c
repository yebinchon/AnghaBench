
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct Output* directory; scalar_t__ filesize; scalar_t__ period; } ;
struct TYPE_3__ {struct Output* stylesheet; } ;
struct Output {struct Output* filename; TYPE_2__ rotate; TYPE_1__ xml; scalar_t__ fp; } ;


 int LOG (int,char*) ;
 int close_rotate (struct Output*,scalar_t__) ;
 int free (struct Output*) ;
 int output_do_rotate (struct Output*,int) ;

void
output_destroy(struct Output *out)
{
    if (out == ((void*)0))
        return;



    if (out->rotate.period || out->rotate.filesize) {
        LOG(1, "doing finale rotate\n");
        output_do_rotate(out, 1);
    }




    if (out->fp)
        close_rotate(out, out->fp);



    free(out->xml.stylesheet);
    free(out->rotate.directory);
    free(out->filename);

    free(out);
}
