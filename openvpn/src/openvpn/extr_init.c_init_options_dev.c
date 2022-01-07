
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int dev; int dev_node; } ;


 int basename (char*) ;
 char* string_alloc (int ,int *) ;

void
init_options_dev(struct options *options)
{
    if (!options->dev && options->dev_node)
    {
        char *dev_node = string_alloc(options->dev_node, ((void*)0));
        options->dev = basename(dev_node);
    }
}
