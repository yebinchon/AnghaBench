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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct sockaddr_un {char* sun_path; } ;
typedef  int /*<<< orphan*/  ser_context ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char**,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC6(const zval *path, char *sockaddr_un_c, ser_context *ctx)
{
	zend_string			*path_str, *tmp_path_str;
	struct sockaddr_un	*saddr = (struct sockaddr_un*)sockaddr_un_c;

	path_str = FUNC5((zval *) path, &tmp_path_str);

	/* code in this file relies on the path being nul terminated, even though
	 * this is not required, at least on linux for abstract paths. It also
	 * assumes that the path is not empty */
	if (FUNC0(path_str) == 0) {
		FUNC2(ctx, "%s", "the path is cannot be empty");
		FUNC4(tmp_path_str);
		return;
	}
	if (FUNC0(path_str) >= sizeof(saddr->sun_path)) {
		FUNC2(ctx, "the path is too long, the maximum permitted "
				"length is %zd", sizeof(saddr->sun_path) - 1);
		FUNC4(tmp_path_str);
		return;
	}

	FUNC3(&saddr->sun_path, FUNC1(path_str), FUNC0(path_str));
	saddr->sun_path[FUNC0(path_str)] = '\0';

	FUNC4(tmp_path_str);
}