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

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SECTION_BACKEND ; 
 int /*<<< orphan*/  CONFIG_SECTION_GLOBAL ; 
 int /*<<< orphan*/  CONFIG_SECTION_WEB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC1() {
    // move [global] options to the [web] section
    FUNC0(CONFIG_SECTION_GLOBAL, "http port listen backlog",
                CONFIG_SECTION_WEB,    "listen backlog");

    FUNC0(CONFIG_SECTION_GLOBAL, "bind socket to IP",
                CONFIG_SECTION_WEB,    "bind to");

    FUNC0(CONFIG_SECTION_GLOBAL, "bind to",
                CONFIG_SECTION_WEB,    "bind to");

    FUNC0(CONFIG_SECTION_GLOBAL, "port",
                CONFIG_SECTION_WEB,    "default port");

    FUNC0(CONFIG_SECTION_GLOBAL, "default port",
                CONFIG_SECTION_WEB,    "default port");

    FUNC0(CONFIG_SECTION_GLOBAL, "disconnect idle web clients after seconds",
                CONFIG_SECTION_WEB,    "disconnect idle clients after seconds");

    FUNC0(CONFIG_SECTION_GLOBAL, "respect web browser do not track policy",
                CONFIG_SECTION_WEB,    "respect do not track policy");

    FUNC0(CONFIG_SECTION_GLOBAL, "web x-frame-options header",
                CONFIG_SECTION_WEB,    "x-frame-options response header");

    FUNC0(CONFIG_SECTION_GLOBAL, "enable web responses gzip compression",
                CONFIG_SECTION_WEB,    "enable gzip compression");

    FUNC0(CONFIG_SECTION_GLOBAL, "web compression strategy",
                CONFIG_SECTION_WEB,    "gzip compression strategy");

    FUNC0(CONFIG_SECTION_GLOBAL, "web compression level",
                CONFIG_SECTION_WEB,    "gzip compression level");

    FUNC0(CONFIG_SECTION_GLOBAL, "web files owner",
                CONFIG_SECTION_WEB,    "web files owner");

    FUNC0(CONFIG_SECTION_GLOBAL, "web files group",
                CONFIG_SECTION_WEB,    "web files group");

    FUNC0(CONFIG_SECTION_BACKEND, "opentsdb host tags",
                CONFIG_SECTION_BACKEND, "host tags");
}