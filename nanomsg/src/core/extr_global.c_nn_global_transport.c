
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_transport {int id; } ;


 struct nn_transport** nn_transports ;

const struct nn_transport *nn_global_transport (int id)
{
    const struct nn_transport *tp;
    int i;

    for (i = 0; (tp = nn_transports[i]) != ((void*)0); i++) {
        if (tp->id == id)
            return tp;
    }
    return ((void*)0);
}
