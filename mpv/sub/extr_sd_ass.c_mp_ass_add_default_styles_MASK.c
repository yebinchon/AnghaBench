#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mp_subtitle_opts {scalar_t__ ass_style_override; int /*<<< orphan*/  sub_style; scalar_t__ ass_styles_file; } ;
struct TYPE_9__ {int /*<<< orphan*/  Name; } ;
struct TYPE_8__ {scalar_t__ n_styles; int PlayResY; int PlayResX; int Kerning; int default_style; TYPE_2__* styles; } ;
typedef  TYPE_1__ ASS_Track ;
typedef  TYPE_2__ ASS_Style ;

/* Variables and functions */
 int MP_ASS_FONT_PLAYRESY ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(ASS_Track *track, struct mp_subtitle_opts *opts)
{
    if (opts->ass_styles_file && opts->ass_style_override)
        FUNC2(track, opts->ass_styles_file, NULL);

    if (track->n_styles == 0) {
        if (!track->PlayResY) {
            track->PlayResY = MP_ASS_FONT_PLAYRESY;
            track->PlayResX = track->PlayResY * 4 / 3;
        }
        track->Kerning = true;
        int sid = FUNC0(track);
        track->default_style = sid;
        ASS_Style *style = track->styles + sid;
        style->Name = FUNC4("Default");
        FUNC3(style, track->PlayResY, opts->sub_style);
    }

    if (opts->ass_style_override)
        FUNC1(track);
}