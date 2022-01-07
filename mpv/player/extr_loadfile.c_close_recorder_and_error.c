
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {TYPE_1__* opts; } ;
struct TYPE_2__ {int * record_file; } ;


 int MP_ERR (struct MPContext*,char*) ;
 int close_recorder (struct MPContext*) ;
 int mp_notify_property (struct MPContext*,char*) ;
 int talloc_free (int *) ;

void close_recorder_and_error(struct MPContext *mpctx)
{
    close_recorder(mpctx);
    talloc_free(mpctx->opts->record_file);
    mpctx->opts->record_file = ((void*)0);
    mp_notify_property(mpctx, "record-file");
    MP_ERR(mpctx, "Disabling stream recording.\n");
}
