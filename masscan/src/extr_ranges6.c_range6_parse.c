
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {unsigned long long hi; unsigned long long lo; int member_1; int member_0; } ;
struct TYPE_8__ {int member_1; int member_0; } ;
struct TYPE_7__ {unsigned long long member_0; unsigned long long member_1; } ;
typedef struct Range6 {TYPE_3__ end; TYPE_3__ begin; TYPE_2__ member_1; TYPE_1__ member_0; } const Range6 ;
typedef TYPE_3__ ipv6address ;


 scalar_t__ LESS (TYPE_3__,TYPE_3__) ;
 int fprintf (int ,char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ isdigit (char const) ;
 scalar_t__ isspace (char const) ;
 int parse_ipv6 (char const*,unsigned int*,unsigned int,TYPE_3__*) ;
 int stderr ;
 scalar_t__ strlen (char const*) ;

struct Range6
range6_parse(const char *buf, unsigned *inout_offset, unsigned max)
{
    unsigned offset;
    struct Range6 result;
    static const struct Range6 badrange = {{~0ULL,~0ULL}, {0,0}};
    int err;

    if (buf == ((void*)0))
        return badrange;

    if (inout_offset == ((void*)0)) {
         inout_offset = &offset;
         offset = 0;
         max = (unsigned)strlen(buf);
    } else
        offset = *inout_offset;



    while (offset < max && isspace(buf[offset]&0xFF))
        offset++;


    err = parse_ipv6(buf, &offset, max, &result.begin);
    if (err) {
        return badrange;
    }
    result.end = result.begin;


    while (offset < max && isspace(buf[offset]&0xFF))
        offset++;


    if (offset >= max)
        goto end;




    if (buf[offset] == '/') {
        uint64_t prefix = 0;
        ipv6address mask = {0, 0};
        unsigned digits = 0;


        offset++;

        if (!isdigit(buf[offset]&0xFF)) {
            return badrange;
        }


        while (offset<max && buf[offset] == '0')
            offset++;


        while (offset<max && isdigit(buf[offset]&0xFF)) {
            prefix = prefix * 10 + (buf[offset++] - '0');
            if (++digits > 3)
                return badrange;
        }
        if (prefix > 128)
            return badrange;


        if (prefix > 64)
            mask.hi = ~0ULL;
        else if (prefix == 0)
            mask.hi = 0;
        else
            mask.hi = ~0ULL << (64 - prefix);

        if (prefix > 64)
            mask.lo = ~0ULL << (128 - prefix);
        else
            mask.lo = 0;



        result.begin.hi &= mask.hi;
        result.begin.lo &= mask.lo;



        result.end.hi = result.begin.hi | ~mask.hi;
        result.end.lo = result.begin.lo | ~mask.lo;
        goto end;
    }




    if (offset<max && buf[offset] == '-') {
        ipv6address ip;

        offset++;
        err = parse_ipv6(buf, &offset, max, &ip);
        if (err)
            return badrange;
        if (LESS(ip, result.begin)) {
            ipv6address xx = result.begin;
            fprintf(stderr, "err: ending addr %4x:%4x:%4x:%4x:%4x:%4x:%4x:%4x cannot come before starting addr %4x:%4x:%4x:%4x:%4x:%4x:%4x:%4x\n",
                (unsigned)((ip.hi>>48ULL) & 0xFFFF), (unsigned)((ip.hi>>32ULL) & 0xFFFF),
                (unsigned)((ip.hi>>16ULL) & 0xFFFF), (unsigned)((ip.hi>> 0ULL) & 0xFFFF),
                (unsigned)((ip.lo>>48ULL) & 0xFFFF), (unsigned)((ip.lo>>32ULL) & 0xFFFF),
                (unsigned)((ip.lo>>16ULL) & 0xFFFF), (unsigned)((ip.lo>> 0ULL) & 0xFFFF),
                (unsigned)((xx.hi>>48ULL) & 0xFFFF), (unsigned)((xx.hi>>32ULL) & 0xFFFF),
                (unsigned)((xx.hi>>16ULL) & 0xFFFF), (unsigned)((xx.hi>> 0ULL) & 0xFFFF),
                (unsigned)((xx.lo>>48ULL) & 0xFFFF), (unsigned)((xx.lo>>32ULL) & 0xFFFF),
                (unsigned)((xx.lo>>16ULL) & 0xFFFF), (unsigned)((xx.lo>> 0ULL) & 0xFFFF)
                );
            result.begin.hi = ~0ULL;
            result.begin.lo = ~0ULL;
            result.end.hi = 0;
            result.end.lo = 0;
        } else
            result.end = ip;


        if (result.end.hi - result.begin.hi > 2
            || (result.end.hi - result.begin.hi == 1 && result.end.lo >= result.begin.lo)) {
            ipv6address x1 = result.begin;
            ipv6address x2 = result.end;
            fprintf(stderr, "err: range %4x:%4x:%4x:%4x:%4x:%4x:%4x:%4x - %4x:%4x:%4x:%4x:%4x:%4x:%4x:%4x greater than 64-bits\n",
                (unsigned)((x1.hi>>48ULL) & 0xFFFF), (unsigned)((x1.hi>>32ULL) & 0xFFFF),
                (unsigned)((x1.hi>>16ULL) & 0xFFFF), (unsigned)((x1.hi>> 0ULL) & 0xFFFF),
                (unsigned)((x1.lo>>48ULL) & 0xFFFF), (unsigned)((x1.lo>>32ULL) & 0xFFFF),
                (unsigned)((x1.lo>>16ULL) & 0xFFFF), (unsigned)((x1.lo>> 0ULL) & 0xFFFF),
                (unsigned)((x2.hi>>48ULL) & 0xFFFF), (unsigned)((x2.hi>>32ULL) & 0xFFFF),
                (unsigned)((x2.hi>>16ULL) & 0xFFFF), (unsigned)((x2.hi>> 0ULL) & 0xFFFF),
                (unsigned)((x2.lo>>48ULL) & 0xFFFF), (unsigned)((x2.lo>>32ULL) & 0xFFFF),
                (unsigned)((x2.lo>>16ULL) & 0xFFFF), (unsigned)((x2.lo>> 0ULL) & 0xFFFF)
                );
            result.begin.hi = ~0ULL;
            result.begin.lo = ~0ULL;
            result.end.hi = 0;
            result.end.lo = 0;
        }
        goto end;
    }

end:
    *inout_offset = offset;
    return result;
}
