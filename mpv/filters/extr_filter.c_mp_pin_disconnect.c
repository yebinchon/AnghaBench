
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_pin {struct mp_pin* user_conn; int * manual_connection; } ;


 int deinit_connection (struct mp_pin*) ;
 int mp_pin_is_connected (struct mp_pin*) ;

void mp_pin_disconnect(struct mp_pin *p)
{
    if (!mp_pin_is_connected(p))
        return;

    p->manual_connection = ((void*)0);

    struct mp_pin *conn = p->user_conn;
    if (conn) {
        p->user_conn = ((void*)0);
        conn->user_conn = ((void*)0);
        deinit_connection(conn);
    }

    deinit_connection(p);
}
