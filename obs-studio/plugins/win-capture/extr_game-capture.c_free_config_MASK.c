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
struct game_capture_config {int /*<<< orphan*/  executable; int /*<<< orphan*/  class; int /*<<< orphan*/  title; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct game_capture_config*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct game_capture_config *config)
{
	FUNC0(config->title);
	FUNC0(config->class);
	FUNC0(config->executable);
	FUNC1(config, 0, sizeof(*config));
}