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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 unsigned char* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clntaddnewcb ; 
 int /*<<< orphan*/  srvaddnewcb ; 

__attribute__((used)) static int FUNC2(SSL *s, unsigned int ext_type, unsigned int context,
                      const unsigned char **out, size_t *outlen, X509 *x,
                      size_t chainidx, int *al, void *add_arg)
{
    int *server = (int *)add_arg;
    unsigned char *data;

    if (FUNC1(s))
        srvaddnewcb++;
    else
        clntaddnewcb++;

    if (*server != FUNC1(s)
            || (data = FUNC0(sizeof(*data))) == NULL)
        return -1;

    *data = 1;
    *out = data;
    *outlen = sizeof(*data);
    return 1;
}