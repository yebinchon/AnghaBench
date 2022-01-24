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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (char const*,char) ; 
 int FUNC5 (char const*) ; 
 char* FUNC6 (char*,char*) ; 
 char FUNC7 (char) ; 

const char *FUNC8(const char *node, const char *name, int *len)
{
    const char *ptr, *ptr2;
    int name_len, node_len;
    char name_buf[32];
    char *node_buf;
    int i;

    /* Create a lower case copy of the node */
    node_len = FUNC5(node)+1;
    node_buf = FUNC1(node_len*sizeof(char));
    if(!node_buf)
        return NULL;
    FUNC3(node_buf, node, node_len);
    for(i=0;i<node_len;i++)
        node_buf[i] = FUNC7(node_buf[i]);
    /* Create a lower case copy of the attribute name (search string) */
    name_len = FUNC5(name);
    FUNC3(name_buf, name, name_len);
    for(i=0;i<name_len;i++)
        name_buf[i] = FUNC7(name_buf[i]);
    name_buf[name_len++] = '=';
    name_buf[name_len++] = '\"';
    name_buf[name_len] = 0;

    ptr = FUNC6(node_buf, name_buf);
    if(!ptr) {
        FUNC0("name not found\n");
        FUNC2(node_buf);
        return NULL;
    }

    ptr += name_len;
    ptr2 = FUNC4(ptr, '\"');
    if(!ptr2)
    {
        FUNC2(node_buf);
        return NULL;
    }

    *len = ptr2-ptr;
    /* Return the pointer offset within the original string */
    ptr = node+(ptr-node_buf);

    FUNC2(node_buf);
    return ptr;
}