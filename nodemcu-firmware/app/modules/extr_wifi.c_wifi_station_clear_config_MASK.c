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
typedef  int /*<<< orphan*/  uint8 ;
struct station_config {int dummy; } ;
typedef  int /*<<< orphan*/  sta_conf ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct station_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct station_config*) ; 
 int FUNC5 (struct station_config*) ; 

__attribute__((used)) static int FUNC6 ( lua_State* L )
{
  struct station_config sta_conf;
  bool auto_connect=true;
  bool save_to_flash=true;

  FUNC1(&sta_conf, 0, sizeof(sta_conf));

  FUNC2();

  bool config_success;
  if(save_to_flash)
  {
    config_success = FUNC4(&sta_conf);
  }
  else
  {
    config_success = FUNC5(&sta_conf);
  }

  FUNC3((uint8)0);

  FUNC0(L, config_success);
  return 1;
}