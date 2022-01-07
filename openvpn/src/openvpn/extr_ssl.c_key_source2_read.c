
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_source {int random2; int random1; int pre_master; } ;
struct key_source2 {struct key_source server; struct key_source client; } ;
struct buffer {int dummy; } ;


 int CLEAR (struct key_source) ;
 int buf_read (struct buffer*,int ,int) ;

__attribute__((used)) static int
key_source2_read(struct key_source2 *k2,
                 struct buffer *buf,
                 bool server)
{
    struct key_source *k = &k2->client;

    if (!server)
    {
        k = &k2->server;
    }

    CLEAR(*k);

    if (server)
    {
        if (!buf_read(buf, k->pre_master, sizeof(k->pre_master)))
        {
            return 0;
        }
    }

    if (!buf_read(buf, k->random1, sizeof(k->random1)))
    {
        return 0;
    }
    if (!buf_read(buf, k->random2, sizeof(k->random2)))
    {
        return 0;
    }

    return 1;
}
