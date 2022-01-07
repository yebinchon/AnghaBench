
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short REDIS_CLUSTER_MOD ;
 unsigned short crc16 (char const*,int) ;

unsigned short cluster_hash_key(const char *key, int len) {
    int s, e;


    for (s = 0; s < len; s++) {
        if (key[s]=='{') break;
    }


    if (s == len) return crc16(key, len) & REDIS_CLUSTER_MOD;


    for (e =s + 1; e < len; e++) {
        if (key[e] == '}') break;
    }


    if (e == len || e == s+1) return crc16(key, len) & REDIS_CLUSTER_MOD;


    return crc16((char*)key+s+1,e-s-1) & REDIS_CLUSTER_MOD;
}
