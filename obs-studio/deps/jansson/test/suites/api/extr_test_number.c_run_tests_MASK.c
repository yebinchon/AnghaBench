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
typedef  int /*<<< orphan*/  json_t ;
typedef  int json_int_t ;

/* Variables and functions */
 double NAN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 double FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (double) ; 
 int FUNC6 (int /*<<< orphan*/ *,double) ; 
 double FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9()
{
    json_t *integer, *real;
    json_int_t i;
    double d;

    integer = FUNC2(5);
    real = FUNC5(100.1);

    if(!integer)
        FUNC0("unable to create integer");
    if(!real)
        FUNC0("unable to create real");

    i = FUNC3(integer);
    if(i != 5)
        FUNC0("wrong integer value");

    d = FUNC7(real);
    if(d != 100.1)
        FUNC0("wrong real value");

    d = FUNC4(integer);
    if(d != 5.0)
        FUNC0("wrong number value");
    d = FUNC4(real);
    if(d != 100.1)
        FUNC0("wrong number value");

    FUNC1(integer);
    FUNC1(real);

#ifdef NAN
    real = json_real(NAN);
    if(real != NULL)
        fail("could construct a real from NaN");

    real = json_real(1.0);
    if(json_real_set(real, NAN) != -1)
        fail("could set a real to NaN");

    if(json_real_value(real) != 1.0)
        fail("real value changed unexpectedly");

    json_decref(real);
#endif

#ifdef INFINITY
    test_inifity();
#endif
}