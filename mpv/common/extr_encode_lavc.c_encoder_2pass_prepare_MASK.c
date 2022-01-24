#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stream {int dummy; } ;
struct encoder_context {TYPE_2__* encoder; int /*<<< orphan*/  twopass_bytebuffer; int /*<<< orphan*/  global; int /*<<< orphan*/  type; TYPE_1__* options; } ;
struct bstr {scalar_t__ start; } ;
struct TYPE_4__ {int flags; scalar_t__ stats_in; } ;
struct TYPE_3__ {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int AV_CODEC_FLAG_PASS1 ; 
 int AV_CODEC_FLAG_PASS2 ; 
 int /*<<< orphan*/  FUNC0 (struct encoder_context*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct encoder_context*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct stream*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct stream* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 struct bstr FUNC5 (struct stream*,struct encoder_context*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(struct encoder_context *p)
{
    char *filename = FUNC7(NULL, "%s-%s-pass1.log",
                                     p->options->file,
                                     FUNC6(p->type));

    if (p->encoder->flags & AV_CODEC_FLAG_PASS2) {
        FUNC0(p, "Reading 2-pass log: %s\n", filename);
        struct stream *s = FUNC4(filename, p->global);
        if (s) {
            struct bstr content = FUNC5(s, p, 1000000000);
            if (content.start) {
                p->encoder->stats_in = content.start;
            } else {
                FUNC1(p, "could not read '%s', "
                        "disabling 2-pass encoding at pass 1\n", filename);
            }
            FUNC2(s);
        } else {
            FUNC1(p, "could not open '%s', "
                    "disabling 2-pass encoding at pass 2\n", filename);
            p->encoder->flags &= ~(unsigned)AV_CODEC_FLAG_PASS2;
        }
    }

    if (p->encoder->flags & AV_CODEC_FLAG_PASS1) {
        FUNC0(p, "Writing to 2-pass log: %s\n", filename);
        p->twopass_bytebuffer = FUNC3(filename, p->global);
        if (!p->twopass_bytebuffer) {
            FUNC1(p, "could not open '%s', "
                    "disabling 2-pass encoding at pass 1\n", filename);
            p->encoder->flags &= ~(unsigned)AV_CODEC_FLAG_PASS1;
        }
    }

    FUNC8(filename);
}