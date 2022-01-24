#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int flags; TYPE_1__* meth; int /*<<< orphan*/  strings; } ;
typedef  TYPE_2__ UI ;
struct TYPE_9__ {scalar_t__ (* ui_open_session ) (TYPE_2__*) ;scalar_t__ (* ui_write_string ) (TYPE_2__*,int /*<<< orphan*/ ) ;int (* ui_flush ) (TYPE_2__*) ;int (* ui_read_string ) (TYPE_2__*,int /*<<< orphan*/ ) ;scalar_t__ (* ui_close_session ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (char const*,size_t,void*),void*) ; 
 int UI_FLAG_PRINT_ERRORS ; 
 int UI_FLAG_REDOABLE ; 
 int /*<<< orphan*/  UI_F_UI_PROCESS ; 
 int /*<<< orphan*/  UI_R_PROCESSING_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ print_error ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 

int FUNC10(UI *ui)
{
    int i, ok = 0;
    const char *state = "processing";

    if (ui->meth->ui_open_session != NULL
        && ui->meth->ui_open_session(ui) <= 0) {
        state = "opening session";
        ok = -1;
        goto err;
    }

    if (ui->flags & UI_FLAG_PRINT_ERRORS)
        FUNC1((int (*)(const char *, size_t, void *))
                            print_error, (void *)ui);

    for (i = 0; i < FUNC3(ui->strings); i++) {
        if (ui->meth->ui_write_string != NULL
            && (ui->meth->ui_write_string(ui,
                                          FUNC4(ui->strings, i))
                <= 0))
        {
            state = "writing strings";
            ok = -1;
            goto err;
        }
    }

    if (ui->meth->ui_flush != NULL)
        switch (ui->meth->ui_flush(ui)) {
        case -1:               /* Interrupt/Cancel/something... */
            ui->flags &= ~UI_FLAG_REDOABLE;
            ok = -2;
            goto err;
        case 0:                /* Errors */
            state = "flushing";
            ok = -1;
            goto err;
        default:               /* Success */
            ok = 0;
            break;
        }

    for (i = 0; i < FUNC3(ui->strings); i++) {
        if (ui->meth->ui_read_string != NULL) {
            switch (ui->meth->ui_read_string(ui,
                                             FUNC4(ui->strings,
                                                                i))) {
            case -1:           /* Interrupt/Cancel/something... */
                ui->flags &= ~UI_FLAG_REDOABLE;
                ok = -2;
                goto err;
            case 0:            /* Errors */
                state = "reading strings";
                ok = -1;
                goto err;
            default:           /* Success */
                ok = 0;
                break;
            }
        }
    }

    state = NULL;
 err:
    if (ui->meth->ui_close_session != NULL
        && ui->meth->ui_close_session(ui) <= 0) {
        if (state == NULL)
            state = "closing session";
        ok = -1;
    }

    if (ok == -1) {
        FUNC2(UI_F_UI_PROCESS, UI_R_PROCESSING_ERROR);
        FUNC0(2, "while ", state);
    }
    return ok;
}