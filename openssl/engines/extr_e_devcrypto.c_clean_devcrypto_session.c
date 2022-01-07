
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session_op {int ses; } ;


 int CIOCFSESSION ;
 int ERR_LIB_SYS ;
 int ERR_raise_data (int ,int ,char*) ;
 int cfd ;
 int errno ;
 scalar_t__ ioctl (int ,int ,int *) ;
 int memset (struct session_op*,int ,int) ;

__attribute__((used)) static int clean_devcrypto_session(struct session_op *sess) {
    if (ioctl(cfd, CIOCFSESSION, &sess->ses) < 0) {
        ERR_raise_data(ERR_LIB_SYS, errno, "calling ioctl()");
        return 0;
    }
    memset(sess, 0, sizeof(struct session_op));
    return 1;
}
