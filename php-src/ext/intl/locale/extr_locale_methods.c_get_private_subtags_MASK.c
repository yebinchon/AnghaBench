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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int zend_off_t ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_string* FUNC3(const char* loc_name)
{
	zend_string* result = NULL;
	size_t       len = 0;
	const char*  mod_loc_name =NULL;

	if( loc_name && (len = FUNC1(loc_name)) > 0 ){
		zend_off_t singletonPos = 0;
		mod_loc_name = loc_name ;
		while( (singletonPos = FUNC0(mod_loc_name)) > -1){
			if( (*(mod_loc_name+singletonPos)=='x') || (*(mod_loc_name+singletonPos)=='X') ){
				/* private subtag start found */
				if( singletonPos + 2 ==  len){
					/* loc_name ends with '-x-' ; return  NULL */
				}
				else{
					/* result = mod_loc_name + singletonPos +2; */
					result = FUNC2(mod_loc_name + singletonPos+2  , (len -( singletonPos +2) ), 0);
				}
				break;
			}
			else{
				if((size_t)(singletonPos + 1) >= len){
					/* String end */
					break;
				} else {
					/* singleton found but not a private subtag , hence check further in the string for the private subtag */
					mod_loc_name = mod_loc_name + singletonPos +1;
					len = FUNC1(mod_loc_name);
				}
			}
		} /* end of while */
	}

	return result;
}