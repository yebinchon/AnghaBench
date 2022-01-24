#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* password; char* prompt_info; } ;
struct TYPE_4__ {scalar_t__ srppassin; } ;
typedef  int /*<<< orphan*/  SSL ;
typedef  TYPE_1__ SRP_ARG ;
typedef  TYPE_2__ PW_CB_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ PWD_STRLEN ; 
 char* FUNC2 (scalar_t__,char*) ; 
 int /*<<< orphan*/  bio_err ; 
 int FUNC3 (char*,scalar_t__,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static char *FUNC4(SSL *s, void *arg)
{
    SRP_ARG *srp_arg = (SRP_ARG *)arg;
    char *pass = FUNC2(PWD_STRLEN + 1, "SRP password buffer");
    PW_CB_DATA cb_tmp;
    int l;

    cb_tmp.password = (char *)srp_arg->srppassin;
    cb_tmp.prompt_info = "SRP user";
    if ((l = FUNC3(pass, PWD_STRLEN, 0, &cb_tmp)) < 0) {
        FUNC0(bio_err, "Can't read Password\n");
        FUNC1(pass);
        return NULL;
    }
    *(pass + l) = '\0';

    return pass;
}