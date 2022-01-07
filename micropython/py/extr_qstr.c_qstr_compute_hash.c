
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_uint_t ;
typedef int byte ;


 int Q_HASH_MASK ;

mp_uint_t qstr_compute_hash(const byte *data, size_t len) {

    mp_uint_t hash = 5381;
    for (const byte *top = data + len; data < top; data++) {
        hash = ((hash << 5) + hash) ^ (*data);
    }
    hash &= Q_HASH_MASK;

    if (hash == 0) {
        hash++;
    }
    return hash;
}
