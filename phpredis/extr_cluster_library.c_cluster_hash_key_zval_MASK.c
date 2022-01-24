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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
#define  IS_ARRAY 132 
#define  IS_DOUBLE 131 
#define  IS_LONG 130 
#define  IS_OBJECT 129 
#define  IS_STRING 128 
 double FUNC0 (int /*<<< orphan*/ *) ; 
 double FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned short FUNC5 (char const*,int) ; 
 int FUNC6 (char*,int,char*,double) ; 

unsigned short FUNC7(zval *z_key) {
    const char *kptr;
    char buf[255];
    int klen;

    // Switch based on ZVAL type
    switch(FUNC4(z_key)) {
        case IS_STRING:
            kptr = FUNC3(z_key);
            klen = FUNC2(z_key);
            break;
        case IS_LONG:
            klen = FUNC6(buf,sizeof(buf),"%ld",FUNC1(z_key));
            kptr = (const char *)buf;
            break;
        case IS_DOUBLE:
            klen = FUNC6(buf,sizeof(buf),"%f",FUNC0(z_key));
            kptr = (const char *)buf;
            break;
        case IS_ARRAY:
            kptr = "Array";
            klen = sizeof("Array")-1;
            break;
        case IS_OBJECT:
            kptr = "Object";
            klen = sizeof("Object")-1;
            break;
        default:
            kptr = "";
            klen = 0;
    }

    // Hash the string representation
    return FUNC5(kptr, klen);
}