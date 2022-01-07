
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * tagmatchname ;
 int vim_free (int *) ;

void
tag_freematch()
{
    vim_free(tagmatchname);
    tagmatchname = ((void*)0);
}
