#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mg_connection {int dummy; } ;
struct http_message {int /*<<< orphan*/  body; } ;
struct TYPE_2__ {int /*<<< orphan*/  setting2; int /*<<< orphan*/  setting1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__ s_settings ; 

__attribute__((used)) static void FUNC3(struct mg_connection *nc, struct http_message *hm) {
  // Get form variables and store settings values
  FUNC0(&hm->body, "setting1", s_settings.setting1,
                  sizeof(s_settings.setting1));
  FUNC0(&hm->body, "setting2", s_settings.setting2,
                  sizeof(s_settings.setting2));

  // Send response
  FUNC1(nc, 302, FUNC2("/"), FUNC2(NULL));
}