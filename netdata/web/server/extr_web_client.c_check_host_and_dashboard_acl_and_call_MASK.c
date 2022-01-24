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
struct web_client {int dummy; } ;
typedef  int /*<<< orphan*/  RRDHOST ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct web_client*,char*,int (*) (int /*<<< orphan*/ *,struct web_client*,char*)) ; 
 int /*<<< orphan*/  FUNC1 (struct web_client*) ; 
 int FUNC2 (struct web_client*) ; 

__attribute__((used)) static inline int FUNC3(RRDHOST *host, struct web_client *w, char *url, int (*func)(RRDHOST *, struct web_client *, char *)) {
    if(!FUNC1(w))
        return FUNC2(w);

    return FUNC0(host, w, url, func);
}