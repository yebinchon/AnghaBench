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
typedef  int /*<<< orphan*/  zend_object ;
typedef  int /*<<< orphan*/  zend_function ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xmlreader_open_fn ; 
 int /*<<< orphan*/  xmlreader_xml_fn ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static zend_function *FUNC3(zend_object **obj, zend_string *name, const zval *key)
{
	if (FUNC0(name) == sizeof("open") - 1
			&& (FUNC1(name)[0] == 'o' || FUNC1(name)[0] == 'O')
			&& (FUNC1(name)[1] == 'p' || FUNC1(name)[1] == 'P')
			&& (FUNC1(name)[2] == 'e' || FUNC1(name)[2] == 'E')
			&& (FUNC1(name)[3] == 'n' || FUNC1(name)[3] == 'N')) {
		return (zend_function*)&xmlreader_open_fn;
	} else if (FUNC0(name) == sizeof("xml") - 1
			&& (FUNC1(name)[0] == 'x' || FUNC1(name)[0] == 'X')
			&& (FUNC1(name)[1] == 'm' || FUNC1(name)[1] == 'M')
			&& (FUNC1(name)[2] == 'l' || FUNC1(name)[2] == 'L')) {
		return (zend_function*)&xmlreader_xml_fn;
	}
	return FUNC2(obj, name, key);;
}