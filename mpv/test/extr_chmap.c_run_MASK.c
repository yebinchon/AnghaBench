#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct test_ctx {int dummy; } ;
struct mp_chmap_sel {int /*<<< orphan*/  member_0; } ;
struct mp_chmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_chmap*,struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_chmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_chmap_sel*,struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_chmap_sel*,struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC9 (struct mp_chmap*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct test_ctx *ctx)
{
    struct mp_chmap a;
    struct mp_chmap b;
    struct mp_chmap_sel s = {0};

    FUNC11("5.1", "7.1", FUNC0("7.1"));
    FUNC11("7.1", "5.1", FUNC0("5.1"));
    FUNC11("7.1(wide-side)", "7.1", FUNC0("7.1"));
    FUNC11("7.1(wide-side)", "5.1(side)", FUNC0("7.1", "5.1(side)"));
    FUNC11("3.1", "5.1", FUNC0("7.1", "5.1", "2.1", "stereo", "mono"));
    FUNC11("5.1", "7.1(rear)", FUNC0("7.1(rear)"));
    FUNC11("5.1(side)", "5.1", FUNC0("5.1", "7.1"));
    FUNC11("5.1", "7.1(alsa)", FUNC0("7.1(alsa)"));
    FUNC11("mono", "stereo", FUNC0("stereo", "5.1"));
    FUNC11("stereo", "stereo", FUNC0("stereo", "5.1"));
    FUNC11("5.1(side)", "7.1(rear)", FUNC0("stereo", "7.1(rear)"));
    FUNC11("7.1", "fl-fr-lfe-fc-bl-br-flc-frc",
             FUNC0("fl-fr-lfe-fc-bl-br-flc-frc", "3.0(back)"));

    FUNC9(&a, 2);

    FUNC6(&b, FUNC4("5.1"));

    FUNC7(&s, &a);
    FUNC1(FUNC8(&s, &b));
    FUNC3(FUNC10(&b), "5.1");

    FUNC11("quad", "quad(side)", FUNC0("quad(side)", "stereo"));
    FUNC11("quad", "quad(side)", FUNC0("quad(side)", "7.0"));
    FUNC11("quad", "quad(side)", FUNC0("7.0", "quad(side)"));
    FUNC11("quad", "7.1(wide-side)", FUNC0("7.1(wide-side)", "stereo"));
    FUNC11("quad", "7.1(wide-side)", FUNC0("stereo", "7.1(wide-side)"));
    FUNC11("quad", "fl-fr-sl-sr",
             FUNC0("fl-fr-fc-bl-br", "fl-fr-sl-sr"));
    FUNC11("quad", "fl-fr-bl-br-na-na-na-na",
             FUNC0("fl-fr-bl-br-na-na-na-na", "quad(side)", "stereo"));
    FUNC11("quad", "fl-fr-bl-br-na-na-na-na",
             FUNC0("stereo", "quad(side)", "fl-fr-bl-br-na-na-na-na"));
    FUNC11("fl-fr-fc-lfe-sl-sr", "fl-fr-lfe-fc-bl-br-na-na",
             FUNC0("fl-fr-lfe-fc-bl-br-na-na", "fl-fr-lfe-fc-bl-br-sdl-sdr"));
    FUNC11("fl-fr-fc-lfe-sl-sr", "fl-fr-lfe-fc-bl-br-na-na",
             FUNC0("fl-fr-lfe-fc-bl-br-sdl-sdr", "fl-fr-lfe-fc-bl-br-na-na"));

    FUNC11("na-fl-fr", "na-fl-fr", FUNC0("na-fl-fr-na", "fl-na-fr", "na-fl-fr",
                                             "fl-fr-na-na", "na-na-fl-fr"));

    FUNC6(&a, FUNC4("3.1"));
    FUNC6(&b, FUNC4("2.1"));

    FUNC2(FUNC5(&a, &b), 1);

    FUNC6(&b, FUNC4("6.1(back)"));
    FUNC2(FUNC5(&a, &b), 0);
    FUNC2(FUNC5(&b, &a), 3);
}