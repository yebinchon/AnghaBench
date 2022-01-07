
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__* ets_get_esf_buf_ctlblk () ;

int ets_esf_free_bufs(int idx) {
    uint32_t *p = ets_get_esf_buf_ctlblk();
    uint32_t *b = (uint32_t*)p[idx];
    int cnt = 0;
    while (b) {
        b = (uint32_t*)b[0x20 / 4];
        cnt++;
    }
    return cnt;
}
