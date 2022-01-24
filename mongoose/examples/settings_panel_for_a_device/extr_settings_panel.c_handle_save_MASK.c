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
struct mg_connection {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  p; scalar_t__ len; } ;
struct http_message {TYPE_2__ body; } ;
struct TYPE_3__ {char* setting1; char* setting2; char* setting3; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,char*,unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 TYPE_1__ s_settings ; 

__attribute__((used)) static void FUNC3(struct mg_connection *nc, struct http_message *hm) {
  /* Get form variables and store settings values */
  FUNC0(&hm->body, "setting1", s_settings.setting1,
                  sizeof(s_settings.setting1));
  FUNC0(&hm->body, "setting2", s_settings.setting2,
                  sizeof(s_settings.setting2));
  FUNC0(&hm->body, "setting3", s_settings.setting3,
                  sizeof(s_settings.setting3));

  FUNC2("Settings updated to '%s' '%s' '%s'\n", s_settings.setting1,
         s_settings.setting2, s_settings.setting3);
  /* Send response */
  FUNC1(nc, "HTTP/1.1 200 OK\r\nContent-Length: %lu\r\n\r\n%.*s",
            (unsigned long) hm->body.len, (int) hm->body.len, hm->body.p);
}