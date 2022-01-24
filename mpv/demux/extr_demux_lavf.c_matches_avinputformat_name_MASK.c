#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lavf_priv {TYPE_1__* avif; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int) ; 
 char* FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static bool FUNC4(struct lavf_priv *priv,
                                       const char *name)
{
    const char *avifname = priv->avif->name;
    while (1) {
        const char *next = FUNC1(avifname, ',');
        if (!next)
            return !FUNC2(avifname, name);
        int len = next - avifname;
        if (len == FUNC3(name) && !FUNC0(avifname, name, len))
            return true;
        avifname = next + 1;
    }
}