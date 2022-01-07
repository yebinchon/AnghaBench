const void *OBJ_bsearch_ex_(const void *key, const void *base, int num,
                            int size,
                            int (*cmp) (const void *, const void *),
                            int flags)
{
    const char *p = ossl_bsearch(key, base, num, size, cmp, flags);
    return p;
}
