
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN (char*) ;
 char* heap_alloc (int) ;
 int heap_free (char*) ;
 int memcpy (char*,char const*,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 char* strstr (char*,char*) ;
 char tolower (char) ;

const char *get_attr(const char *node, const char *name, int *len)
{
    const char *ptr, *ptr2;
    int name_len, node_len;
    char name_buf[32];
    char *node_buf;
    int i;


    node_len = strlen(node)+1;
    node_buf = heap_alloc(node_len*sizeof(char));
    if(!node_buf)
        return ((void*)0);
    memcpy(node_buf, node, node_len);
    for(i=0;i<node_len;i++)
        node_buf[i] = tolower(node_buf[i]);

    name_len = strlen(name);
    memcpy(name_buf, name, name_len);
    for(i=0;i<name_len;i++)
        name_buf[i] = tolower(name_buf[i]);
    name_buf[name_len++] = '=';
    name_buf[name_len++] = '\"';
    name_buf[name_len] = 0;

    ptr = strstr(node_buf, name_buf);
    if(!ptr) {
        WARN("name not found\n");
        heap_free(node_buf);
        return ((void*)0);
    }

    ptr += name_len;
    ptr2 = strchr(ptr, '\"');
    if(!ptr2)
    {
        heap_free(node_buf);
        return ((void*)0);
    }

    *len = ptr2-ptr;

    ptr = node+(ptr-node_buf);

    heap_free(node_buf);
    return ptr;
}
