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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 unsigned char* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clntaddoldcb ; 
 int /*<<< orphan*/  srvaddoldcb ; 

__attribute__((used)) static int FUNC2(SSL *s, unsigned int ext_type, const unsigned char **out,
                      size_t *outlen, int *al, void *add_arg)
{
    int *server = (int *)add_arg;
    unsigned char *data;

    if (FUNC1(s))
        srvaddoldcb++;
    else
        clntaddoldcb++;

    if (*server != FUNC1(s)
            || (data = FUNC0(sizeof(*data))) == NULL)
        return -1;

    *data = 1;
    *out = data;
    *outlen = sizeof(char);
    return 1;
}