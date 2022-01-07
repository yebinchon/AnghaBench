
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int status_output_owned; scalar_t__ status_output; } ;
struct TYPE_3__ {int status_file_update_freq; int status_file; } ;
struct context {TYPE_2__ c1; TYPE_1__ options; } ;


 int STATUS_OUTPUT_WRITE ;
 scalar_t__ status_open (int ,int ,int,int *,int ) ;

__attribute__((used)) static void
do_open_status_output(struct context *c)
{
    if (!c->c1.status_output)
    {
        c->c1.status_output = status_open(c->options.status_file,
                                          c->options.status_file_update_freq,
                                          -1,
                                          ((void*)0),
                                          STATUS_OUTPUT_WRITE);
        c->c1.status_output_owned = 1;
    }
}
