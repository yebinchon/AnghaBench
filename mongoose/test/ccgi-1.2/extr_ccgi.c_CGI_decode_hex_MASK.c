void *
FUNC0(const char *p, int *len) {
    unsigned char *out;
    int i, k, n, L, R;

    if (p == 0 || ((n = strlen(p)) & 1)) {
        return 0;  /* length of input must be even */
    }
    out = FUNC0(n / 2 + 1);
    for (i = k = 0; i < n; i += 2) {
        if ((L = FUNC0(p[i])) >= 0 && (R = FUNC0(p[i + 1])) >= 0) {
            out[k++] = (L << 4) + R;
        }
        else {
            FUNC0(out);
            return 0;
        }
    }
    out[k] = 0;
    if (len != 0) {
        *len = k;
    }
    return out;
}