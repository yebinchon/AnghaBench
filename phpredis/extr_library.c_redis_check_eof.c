
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ status; scalar_t__ mode; long retry_interval; scalar_t__ dbNumber; scalar_t__ auth; scalar_t__ stream; scalar_t__ watching; } ;
typedef TYPE_1__ RedisSock ;


 scalar_t__ MULTI ;
 scalar_t__ REDIS_SOCK_STATUS_FAILED ;
 int REDIS_THROW_EXCEPTION (char*,int ) ;
 scalar_t__ errno ;
 long php_rand () ;
 scalar_t__ php_stream_eof (scalar_t__) ;
 scalar_t__ redis_sock_auth (TYPE_1__*) ;
 scalar_t__ redis_sock_connect (TYPE_1__*) ;
 int redis_sock_disconnect (TYPE_1__*,int) ;
 scalar_t__ reselect_db (TYPE_1__*) ;
 int usleep (long) ;

int
redis_check_eof(RedisSock *redis_sock, int no_throw)
{
    int count;
    char *errmsg;

    if (!redis_sock || !redis_sock->stream || redis_sock->status == REDIS_SOCK_STATUS_FAILED) {
        if (!no_throw) {
            REDIS_THROW_EXCEPTION( "Connection closed", 0);
        }
        return -1;
    }
    errno = 0;
    if (php_stream_eof(redis_sock->stream) == 0) {

        return 0;
    } else if (redis_sock->mode == MULTI || redis_sock->watching) {
        errmsg = "Connection lost and socket is in MULTI/watching mode";
    } else {
        errmsg = "Connection lost";

        for (count = 0; count < 10; ++count) {

            if (redis_sock->stream) {
                redis_sock_disconnect(redis_sock, 1);
            }

            if (redis_sock->retry_interval) {

                long retry_interval = (count ? redis_sock->retry_interval : (php_rand() % redis_sock->retry_interval));
                usleep(retry_interval);
            }

            if (redis_sock_connect(redis_sock) == 0) {

                errno = 0;
                if (php_stream_eof(redis_sock->stream) == 0) {

                    if (redis_sock->auth && redis_sock_auth(redis_sock) != 0) {
                        errmsg = "AUTH failed while reconnecting";
                        break;
                    }

                    if (redis_sock->dbNumber && reselect_db(redis_sock) != 0) {
                        errmsg = "SELECT failed while reconnecting";
                        break;
                    }

                    return 0;
                }
            }
        }
    }

    redis_sock_disconnect(redis_sock, 1);
    redis_sock->status = REDIS_SOCK_STATUS_FAILED;
    if (!no_throw) {
        REDIS_THROW_EXCEPTION( errmsg, 0);
    }
    return -1;
}
